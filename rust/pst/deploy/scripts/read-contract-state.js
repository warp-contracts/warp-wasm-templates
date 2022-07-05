const { loadWallet } = require('./utils/load-wallet');
const { connectArweave } = require('./utils/connect-arweave');
const { connectContract } = require('./utils/connect-contract');
const { contractTxId } = require(`./utils/contract-tx-id`);

module.exports.readContractState = async function (
  host,
  port,
  protocol,
  target,
  walletJwk
) {
  const arweave = connectArweave(host, port, protocol);
  const wallet = await loadWallet(arweave, walletJwk, target, true);

  const txId = contractTxId(target);
  const contract = await connectContract(arweave, wallet, txId);
  const { state } = await contract.readState();

  console.log('Init state:', state);
  console.log('Contract tx id', txId);
};
