const fs = require("fs");
const path = require("path");
module.exports.contractTxId = fs.readFileSync(path.join(__dirname, 'contract-tx-id.txt'), "utf-8").trim();