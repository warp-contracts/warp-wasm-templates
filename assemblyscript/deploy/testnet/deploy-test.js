const { deploy } = require('../scripts/deploy');

deploy(
  'testnet.redstone.tools',
  443,
  'https',
  'testnet',
  'deploy/local/wallet_local.json'
).finally();
