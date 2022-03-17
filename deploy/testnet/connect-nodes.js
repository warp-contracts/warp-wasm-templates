const {connectArweave} = require("./connect-arweave");
const {connectContract} = require("./connect-contract");
const {loadWallet, walletAddress} = require("./load-wallet");

async function connectNodes() {
    const arweave = connectArweave();
    const wallet = await loadWallet(arweave);
    const walletAddr = await walletAddress(arweave, wallet);
    const contract = await connectContract(arweave, wallet);

    await connectNode(contract, {
        nodeId: "localnode_1",
        url: "http://localhost",
        port: 5777,
        address: "http://localhost:5777",
        owner: walletAddr,
        networkId: "ppe_localhost"
    });

    await connectNode(contract, {
        nodeId: "localnode_2",
        url: "http://localhost",
        port: 5778,
        address: "http://localhost:5778",
        owner: walletAddr,
        networkId: "ppe_localhost"
    });

    await connectNode(contract, {
        nodeId: "localnode_3",
        url: "http://localhost",
        port: 5779,
        address: "http://localhost:5779",
        owner: walletAddr,
        networkId: "ppe_localhost"
    });
}

async function connectNode(contract, connectNode) {
    const input = {
        function: 'connectNode',
        connectNode
    };

    const result = await contract.dryWrite(input);

    if (result.type == 'ok') {
        await contract.writeInteraction(input);
    } else {
        console.error(result);
    }
}

connectNodes().finally();



