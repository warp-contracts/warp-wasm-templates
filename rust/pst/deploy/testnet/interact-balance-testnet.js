const { interactBalance } = require('../scripts/interact-balance');

interactBalance(
  'sonar.warp.cc',
  443,
  'https',
  'testnet',
  'deploy/testnet/wallet_testnet.json'
).finally();
