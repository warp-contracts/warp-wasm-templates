const {connectArweave} = require("./connect-arweave");
const {connectContract} = require("./connect-contract");
const {loadWallet, walletAddress} = require("./load-wallet");

async function registerContract() {
    const arweave = connectArweave();
    const wallet = await loadWallet(arweave);
    const contract = await connectContract(arweave, wallet);

    await registerForNetwork('redstone_testnet_1', contract);
    await registerForNetwork('ppe_localhost', contract);
}

async function registerForNetwork(networkId, contract) {
    const input = {
        function: 'registerContracts',
        registerContracts: {
            networkId: networkId,
            contracts: [
                "rpx3X2kIfWPkbf9CvNVRFJR3OuJDtjXuWaQOQAeJujU",
                "NfOsoVlsQ4_hh_tLwvI4IkNQr0Ey5p3_uHTqKD1O3Ts",
                "fnbd1aINsmadftOiY6YU9K5i7hz7n76afypx0Shk1uo"
            ]
        }
    };

    const result = await contract.dryWrite(input);

    if (result.type == 'ok') {
        await contract.writeInteraction(input);
    } else {
        console.error(result);
    }
}

registerContract().finally();



