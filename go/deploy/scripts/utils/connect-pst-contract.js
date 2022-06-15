const { WarpNodeFactory } = require('warp-contracts');

module.exports.connectPstContract = async function (arweave, wallet, contractTxId) {
  return WarpNodeFactory.memCached(arweave).pst(contractTxId).connect(wallet);
};
