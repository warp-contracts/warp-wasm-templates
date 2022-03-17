const fs = require("fs");
const path = require("path");
const {connectArweave} = require("./connect-arweave");

async function generate() {
    const arweave = connectArweave();
    const wallet = await arweave.wallets.generate();
    fs.writeFileSync(path.join(__dirname, 'testnet-wallet_2.json'), JSON.stringify(wallet));
}

generate().finally();

