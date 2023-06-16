import { WarpFactory } from 'warp-contracts';
import { ArweaveSigner, DeployPlugin } from 'warp-contracts-plugin-deploy';
import fs from 'fs';
import path from 'path';

class State {
  constructor(public x: number) {}
}

class Action {
  constructor(public x: number) {}
}

async function main() {
  const warp = WarpFactory.forMainnet().use(new DeployPlugin());
  const wallet = JSON.parse(fs.readFileSync(path.join(__dirname, '../../../.secrets/jwk.json'), 'utf-8'));
  const { contractTxId } = await warp.deploy({
    src: fs.readFileSync(path.join(__dirname, '../pkg/rust-contract_bg.wasm')),
    wallet: new ArweaveSigner(wallet),
    initState: JSON.stringify(new State(0)),
    wasmGlueCode: path.join(__dirname, '../pkg/rust-contract.js'),
    wasmSrcCodeDir: path.join(__dirname, '../src'),
  });

  console.log(contractTxId);
  const contract = warp.contract(contractTxId).connect(wallet);
  const result = await contract.writeInteraction({ function: 'add', x: 8 });
  console.log(result);

  const { cachedValue } = await contract.readState();
  console.log(cachedValue);
}

main().catch((e) => console.log(e));
