module.exports.addFunds = async function (arweave, wallet) {
    const walletAddress = await arweave.wallets.getAddress(wallet);
    await arweave.api.get(`/mint/${walletAddress}/1000000000000000`);
}

module.exports.mineBlock = async function (arweave) {
    await arweave.api.get('mine');
}
