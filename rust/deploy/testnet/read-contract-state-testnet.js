const { readContractState } = require('../scripts/read-contract-state');

readContractState(
  'testnet.redstone.tools',
  443,
  'https',
  'testnet',
  'deploy/local/wallet_local.json'
).finally();
