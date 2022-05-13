const fs = require('fs');
const path = require('path');
const { SmartWeaveNodeFactory } = require('redstone-smartweave');
const { mineBlock } = require('./utils/mine-block');
const { loadWallet, walletAddress } = require('./utils/load-wallet');
const { connectArweave } = require('./utils/connect-arweave');

module.exports.deploy = async function (host, port, protocol, target, walletJwk) {
  const arweave = connectArweave(host, port, protocol);
  const smartweave = SmartWeaveNodeFactory.memCached(arweave);
  const wallet = await loadWallet(arweave, walletJwk, target);
  const walletAddr = await walletAddress(arweave, wallet);
  const contractSrc = fs.readFileSync(path.join(__dirname, '../../build/optimized.wasm'));
  const stateFromFile = JSON.parse(fs.readFileSync(path.join(__dirname, '../state/init-state.json'), 'utf-8'));

  const initialState = {
    ...stateFromFile,
    ...{
      owner: walletAddr,
      balances: {
        ...stateFromFile.balances,
        [walletAddr]: 555669,
      },
    },
  };
  const contractTxId = await smartweave.createContract.deploy(
    {
      wallet,
      initState: JSON.stringify(initialState),
      src: contractSrc,
      wasmSrcCodeDir: path.join(__dirname, '../../assembly'),
    },
    target == 'mainnet'
  );
  fs.writeFileSync(path.join(__dirname, `../${target}/contract-tx-id.txt`), contractTxId);

  if (target == 'testnet' || target == 'local') {
    await mineBlock(arweave);
  }

  if (target == 'testnet') {
    console.log(`Check contract at https://sonar.redstone.tools/#/app/contract/${contractTxId}?network=testnet`);
  } else {
    console.log('Contract tx id', contractTxId);
  }
};
