const fs = require('fs');
const path = require('path');
module.exports.contractTxId = function (target) {
  return fs
    .readFileSync(
      path.join(__dirname, `../../../deploy/${target}/contract-tx-id.txt`),
      'utf-8'
    )
    .trim();
};
