const { readContractState } = require('../scripts/read-contract-state');

readContractState(
  'sonar.warp.cc',
  443,
  'https',
  'testnet',
  'deploy/testnet/wallet_testnet.json'
).finally();
