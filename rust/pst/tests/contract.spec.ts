import fs from 'fs';

import ArLocal from 'arlocal';
import Arweave from 'arweave';
import { JWKInterface } from 'arweave/node/lib/wallet';
import {
  InteractionResult,
  LoggerFactory,
  PstState,
  Warp,
  SmartWeaveTags,
  WarpFactory,
  TagsParser,
  ArweaveWrapper,
  WasmSrc,
} from 'warp-contracts';
import path from 'path';
import { PstContract } from '../contract/definition/bindings/ts/PstContract';
import { State } from '../contract/definition/bindings/ts/ContractState';

jest.setTimeout(30000);

describe('Testing the Rust WASM Profit Sharing Token', () => {
  let contractSrc: Buffer;
  let contractGlueCodeFile: string;

  let wallet: JWKInterface;
  let walletAddress: string;

  let initialState: State;

  let arweave: Arweave;
  let arlocal: ArLocal;
  let warp: Warp;
  let pst: PstContract;
  let pst2: PstContract;

  let contractTxId: string;

  let properForeignContractTxId: string;
  let wrongForeignContractTxId: string;

  let arweaveWrapper: ArweaveWrapper;
  let tagsParser: TagsParser;

  beforeAll(async () => {
    // note: each tests suit (i.e. file with tests that Jest is running concurrently
    // with another files has to have ArLocal set to a different port!)
    arlocal = new ArLocal(1820, false);
    await arlocal.start();

    tagsParser = new TagsParser();

    LoggerFactory.INST.logLevel('error');
    LoggerFactory.INST.logLevel('debug', 'WASM:Rust');
    //LoggerFactory.INST.logLevel('debug', 'WasmContractHandlerApi');

    warp = WarpFactory.forLocal(1820);
    ({ arweave } = warp);
    arweaveWrapper = new ArweaveWrapper(arweave);


    ({ jwk: wallet, address: walletAddress } = await warp.generateWallet());

    contractSrc = fs.readFileSync(path.join(__dirname, '../contract/implementation/pkg/rust-contract_bg.wasm'));
    const contractSrcCodeDir: string = path.join(__dirname, '../contract/implementation/src');
    contractGlueCodeFile = path.join(__dirname, '../contract/implementation/pkg/rust-contract.js');
    const stateFromFile: PstState = JSON.parse(fs.readFileSync(path.join(__dirname, './data/token-pst.json'), 'utf8'));

    initialState = {
      ...stateFromFile,
      ...{
        owner: walletAddress,
        balances: {
          ...stateFromFile.balances,
          [walletAddress]: 555669
        }
      }
    };

    // deploying contract using the new SDK.
    ({ contractTxId } = await warp.deploy({
      wallet,
      initState: JSON.stringify(initialState),
      src: contractSrc,
      wasmSrcCodeDir: contractSrcCodeDir,
      wasmGlueCode: contractGlueCodeFile
    }));

    ({ contractTxId: properForeignContractTxId } = await warp.deploy({
      wallet,
      initState: JSON.stringify({
        ...initialState,
        ...{
          ticker: 'FOREIGN_PST',
          name: 'foreign contract'
        }
      }),
      src: contractSrc,
      wasmSrcCodeDir: contractSrcCodeDir,
      wasmGlueCode: contractGlueCodeFile
    }));

    ({ contractTxId: wrongForeignContractTxId } = await warp.deploy({
      wallet,
      initState: JSON.stringify({
        ...initialState,
        ...{
          ticker: 'FOREIGN_PST_2',
          name: 'foreign contract 2'
        }
      }),
      src: contractSrc,
      wasmSrcCodeDir: contractSrcCodeDir,
      wasmGlueCode: contractGlueCodeFile
    }));

    pst = new PstContract(contractTxId, warp);

    pst2 = new PstContract(properForeignContractTxId, warp);

    // connecting wallet to the PST contract
    pst.connect(wallet).setEvaluationOptions({ internalWrites: true });
    pst2.connect(wallet).setEvaluationOptions({ internalWrites: true });
  });

  afterAll(async () => {
    await arlocal.stop();
  });

  it('should properly deploy contract', async () => {
    const contractTx = await arweave.transactions.get(contractTxId);
    expect(contractTx).not.toBeNull();

    const contractSrcTxId = tagsParser.getTag(contractTx, SmartWeaveTags.CONTRACT_SRC_TX_ID);
    const contractSrcTx = await arweave.transactions.get(contractSrcTxId);
    expect(tagsParser.getTag(contractSrcTx, SmartWeaveTags.CONTENT_TYPE)).toEqual('application/wasm');
    expect(tagsParser.getTag(contractSrcTx, SmartWeaveTags.WASM_LANG)).toEqual('rust');
    expect(tagsParser.getTag(contractSrcTx, SmartWeaveTags.WASM_META)).toBeTruthy();

    const srcTxData = await arweaveWrapper.txData(contractSrcTxId);
    const wasmSrc = new WasmSrc(srcTxData);
    expect(wasmSrc.wasmBinary()).not.toBeNull();
    expect(wasmSrc.additionalCode()).toEqual(
      fs.readFileSync(contractGlueCodeFile, 'utf-8')
    );
    expect((await wasmSrc.sourceCode()).size).toEqual(12);

  });

  it('should read pst state and balance data', async () => {
    expect(await pst.currentState()).toEqual(initialState);
    expect((await pst.balance({ target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M' })).balance).toEqual(10000000);
    expect((await pst.balance({ target: '33F0QHcb22W7LwWR1iRC8Az1ntZG09XQ03YWuw2ABqA' })).balance).toEqual(23111222);
    expect((await pst.balance({ target: walletAddress })).balance).toEqual(555669);
  });

  it('should properly transfer tokens', async () => {
    await pst.transfer({
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
      qty: 555
    });

    expect((await pst.currentState()).balances[walletAddress]).toEqual(555669 - 555);
    expect((await pst.currentState()).balances['uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M']).toEqual(10000000 + 555);
  });

  it('should properly view contract state', async () => {
    const result = await pst.balance({ target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M' });
    expect(result.balance).toEqual(10000000 + 555);
    expect(result.ticker).toEqual('EXAMPLE_PST_TOKEN');
    expect(result.target).toEqual('uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M');
  });

  // note: the dummy logic on the test contract should add 1000 tokens
  // to each address, if the foreign contract state 'ticker' field = 'FOREIGN_PST'
  it('should properly read foreign contract state', async () => {
    await pst.foreignRead({
      contractTxId: wrongForeignContractTxId
    });
    expect((await pst.currentState()).balances[walletAddress]).toEqual(555669 - 555);
    expect((await pst.currentState()).balances['uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M']).toEqual(10000000 + 555);
    await pst.foreignRead({
      contractTxId: properForeignContractTxId
    });
    expect((await pst.currentState()).balances[walletAddress]).toEqual(555669 - 555 + 1000);
    expect((await pst.currentState()).balances['uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M']).toEqual(
      10000000 + 555 + 1000
    );
  });

  it('should properly view foreign contract state', async () => {
    let res = await pst.foreignView({
      contractTxId: properForeignContractTxId,
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M'
    });
    expect(res.ticker).toEqual("FOREIGN_PST");
    expect(res.target).toEqual("uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M");
    expect(res.balance).toEqual(10_000_000);
  });

  it('should propagate error from view foreign contract state', async () => {
    let exc;
    try {
      let res = await pst.foreignView({
        contractTxId: properForeignContractTxId,
        target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M-Invalid'
      });
    } catch(e) {
      exc = e;
    }
    expect(exc).toHaveProperty("name", "Error");
    expect(exc.message).toMatch(/\[RE:RE\]/);
  });

  it('should properly perform internal write', async () => {
    expect((await pst2.balance({ target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M' })).balance).toEqual(10000000);

    await pst.foreignWrite({
      contractTxId: properForeignContractTxId,
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
      qty: 555
    });

    expect((await pst2.balance({ target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M' })).balance).toEqual(10000555);
    expect((await pst2.balance({ target: walletAddress })).balance).toEqual(555669 - 555);
  });

  it('should properly perform dry write with overwritten caller', async () => {
    const { address: overwrittenCaller } = await warp.generateWallet();

    await pst.transfer({
      target: overwrittenCaller,
      qty: 1000
    });

    // note: transfer should be done from the "overwrittenCaller" address, not the "walletAddress"
    const result: InteractionResult<State, unknown> = await pst.contract.dryWrite(
      {
        function: 'transfer',
        target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
        qty: 333
      },
      overwrittenCaller
    );

    expect(result.state.balances[walletAddress]).toEqual(555114 - 1000 + 1000);
    expect(result.state.balances['uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M']).toEqual(10000000 + 1000 + 555 + 333);
    expect(result.state.balances[overwrittenCaller]).toEqual(1000 - 333);
  });

  it('should properly handle runtime errors', async () => {
    const result = await pst.contract.dryWrite({
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
      qty: 555
    });

    expect(result.type).toEqual('exception');
    expect(result.errorMessage).toEqual('[RE:RE] Error while parsing input');
  });

  it('should properly handle contract errors', async () => {
    const result = await pst.contract.dryWrite({
      function: 'transfer',
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
      qty: 0
    });

    expect(result.type).toEqual('error');
    expect(result.errorMessage).toEqual('[CE:TransferAmountMustBeHigherThanZero]');
  });

  xit('should return stable gas results', async () => {
    const results = [];

    for (let i = 0; i < 10; i++) {
      const result = await pst.contract.dryWrite({
        function: 'transfer',
        target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
        qty: 555
      });
      results.push(result);
    }

    results.forEach((result) => {
      expect(result.gasUsed).toEqual(9388933);
    });
  });

  xit('should honor gas limits', async () => {
    pst.setEvaluationOptions({
      gasLimit: 5000000
    });

    const result = await pst.contract.dryWrite({
      function: 'transfer',
      target: 'uhE-QeYS8i4pmUtnxQyHD7dzXFNaJ9oMK-IM-QPNY6M',
      qty: 555
    });

    expect(result.type).toEqual('exception');
    expect(result.errorMessage.startsWith('[RE:OOG] Out of gas!')).toBeTruthy();
  });

  it("should properly evolve contract's source code", async () => {
    const balance = (await pst.currentState()).balances[walletAddress];

    const newSource = fs.readFileSync(path.join(__dirname, './data/token-evolve.js'), 'utf8');

    const srcTx = await warp.createSourceTx({ src: newSource }, wallet);
    const newSrcTxId = await warp.saveSourceTx(srcTx);

    await pst.evolve({ value: newSrcTxId });

    // note: the evolved balance always adds 555 to the result
    expect((await pst.balance({ target: walletAddress })).balance).toEqual(balance + 555);
  });

});
