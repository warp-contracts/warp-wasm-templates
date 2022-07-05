const { interactBalance } = require('../scripts/interact-balance');

interactBalance(
  'arweave.net',
  443,
  'https',
  'mainnet',
  'deploy/mainnet/.secrets/wallet_mainnet.json'
).finally();
