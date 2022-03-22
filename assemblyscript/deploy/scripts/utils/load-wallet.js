const fs = require('fs');
const { addFunds } = require('./addFunds');
const { generateWallet } = require('./create-testnet-wallet');

const path = require('path');

module.exports.loadWallet = async function (arweave, walletJwk, target) {
  let wallet;
  if (target == 'local' || target == 'testnet') {
    await generateWallet(arweave, target);
  }
  wallet = JSON.parse(fs.readFileSync(path.join(walletJwk), 'utf-8'));
  if (target == 'testnet' || target == 'local') {
    await addFunds(arweave, wallet);
  }

  return wallet;
};

module.exports.walletAddress = async function (arweave, wallet) {
  return arweave.wallets.getAddress(wallet);
};
