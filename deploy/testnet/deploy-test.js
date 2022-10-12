const { deploy } = require('../scripts/deploy');

deploy(
  'testnet.redstone.tools',
  443,
  'https',
  'testnet',
  'deploy/testnet/wallet_testnet.json'
).finally();
