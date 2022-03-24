const { SmartWeaveNodeFactory } = require('redstone-smartweave');

module.exports.connectPstContract = async function (
  arweave,
  wallet,
  contractTxId
) {
  return SmartWeaveNodeFactory.memCached(arweave)
    .pst(contractTxId)
    .connect(wallet);
};
