const Arweave = require("arweave");

module.exports.connectArweave = function () {
    return Arweave.init({
        host: 'testnet.redstone.tools',
        port: 443,
        protocol: 'https'
    });
}