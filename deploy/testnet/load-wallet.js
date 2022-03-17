const fs = require("fs");
const {addFunds} = require("../utils");
const path = require("path");

module.exports.loadWallet = async function (arweave) {
    const wallet = JSON.parse(fs.readFileSync(path.join(__dirname, 'testnet-wallet.json'), 'utf-8'));
    await addFunds(arweave, wallet);

    return wallet;
}

module.exports.walletAddress = async function (arweave, wallet) {
    return arweave.wallets.getAddress(wallet);
}
