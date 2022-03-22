const { readContractState } = require('../scripts/read-contract-state');

readContractState(
  'arweave.net',
  443,
  'https',
  'mainnet',
  'deploy/local/wallet_local.json'
).finally();
