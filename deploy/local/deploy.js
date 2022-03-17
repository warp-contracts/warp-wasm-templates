const fs = require('fs');
const path = require('path');
const { default: ArLocal } = require('arlocal');
const Arweave = require('arweave');
const { SmartWeaveNodeFactory } = require('redstone-smartweave');

async function deploy() {
  console.log(ArLocal);

  const arlocal = new ArLocal(1300, true);
  await arlocal.start();

  const arweave = Arweave.init({
    host: 'localhost',
    port: 1300,
    protocol: 'http',
  });

  try {
    const smartweave = SmartWeaveNodeFactory.memCached(arweave);
    const wallet = await arweave.wallets.generate();
    await addFunds(arweave, wallet);

    const contractSrc = fs.readFileSync(
      path.join(__dirname, '../../build/optimized.wasm')
    );
    const initState = fs.readFileSync(
      path.join(__dirname, '../init-state.json'),
      'utf-8'
    );

    const contractTxId = await smartweave.createContract.deploy({
      wallet,
      initState,
      src: contractSrc,
    });

    await mineBlock(arweave);

    const contract = smartweave
      .contract(contractTxId)
      .setEvaluationOptions({
        gasLimit: 14000000,
      })
      .connect(wallet);

    const { state, validity } = await contract.readState();

    console.log(state);
  } catch (e) {
    console.error(e);
  } finally {
    await arlocal.stop();
  }
}

async function addFunds(arweave, wallet) {
  const walletAddress = await arweave.wallets.getAddress(wallet);
  await arweave.api.get(`/mint/${walletAddress}/1000000000000000`);
}

async function mineBlock(arweave) {
  await arweave.api.get('mine');
}

deploy().finally();
