const { WarpNodeFactory } = require('warp-contracts');

module.exports.connectContract = async function (arweave, wallet, contractTxId) {
  return WarpNodeFactory.memCached(arweave).contract(contractTxId).connect(wallet);
};
