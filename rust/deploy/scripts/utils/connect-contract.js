const { SmartWeaveNodeFactory } = require('redstone-smartweave');

module.exports.connectContract = async function (
  arweave,
  wallet,
  contractTxId
) {
  return SmartWeaveNodeFactory.memCached(arweave)
    .contract(contractTxId)
    .connect(wallet);
};
