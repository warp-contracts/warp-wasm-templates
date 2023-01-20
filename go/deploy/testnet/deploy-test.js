const { deploy } = require('../scripts/deploy');

deploy(
  'sonar.warp.cc',
  443,
  'https',
  'testnet',
  'deploy/testnet/wallet_testnet.json'
).finally();
