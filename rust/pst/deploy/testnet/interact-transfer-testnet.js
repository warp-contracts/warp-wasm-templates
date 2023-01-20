const { interactTransfer } = require('../scripts/interact-transfer');

interactTransfer(
  'sonar.warp.cc',
  443,
  'https',
  'testnet',
  'deploy/testnet/wallet_testnet.json'
).finally();
