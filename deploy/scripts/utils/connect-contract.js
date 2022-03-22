const { SmartWeaveNodeFactory } = require('redstone-smartweave');

module.exports.connectContract = async function (
  arweave,
  wallet,
  contractTxId
) {
  return SmartWeaveNodeFactory.memCached(arweave)
    .contract(contractTxId)
    .setEvaluationOptions({
      gasLimit: 14000000,
    })
    .connect(wallet);
};
