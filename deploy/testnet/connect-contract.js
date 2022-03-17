const {SmartWeaveNodeFactory} = require("redstone-smartweave");
const {contractTxId} = require("./contract-tx-id");

module.exports.connectContract = async function (arweave, wallet) {
    return SmartWeaveNodeFactory.memCached(arweave)
        .contract(contractTxId)
        .connect(wallet);
}