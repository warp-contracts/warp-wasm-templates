# RedStone SmartWeave contracts - WASM templates

This repo contains SmartWeave WASM contracts templates in:
* [AssemblyScript](assemblyscript/README.md)
* [Rust](rust/README.md)
* [Go](go/README.md)  

It allows to quickly jump into contract development - each template contains an example PST contract,
deployment scripts (on localhost, testnet and mainnet), build scripts and example tests.

| Feature                | JS                                        | WASM - AS | WASM - Rust | WASM - Go |
|------------------------|-------------------------------------------|-----------|-------------|-----------|
| Sandboxing             | [vm2](https://github.com/patriksimek/vm2) | ✅         | ✅           | ✅         |
| Foreign contract read  | ✅                                         | R&D       | ✅           | ✅         | 
| Foreign contract view  | ✅                                         | R&D       | Soon        | Soon      |
| Foreign contract write | ✅                                         | R&D       | Soon        | Soon      |
| Arweave.utils          | ✅                                         | Soon      | Soon        | Soon      |
| Evolve                 | ✅                                         | ✅         | ✅           | ✅         |
| Logging from contract  | ✅                                         | ✅         | ✅           | ✅         |
| Transaction data (1)   | ✅                                         | ✅         | ✅           | ✅         |
| Block data (2)         | ✅                                         | ✅         | ✅           | ✅         |
| Contract data (3)      | ✅                                         | ✅         | ✅           | ✅         |

Legend:  
* `R&D` - we need to make some research and development before implementing the feature
* `Soon` - the technology is already there, we just need to find some time to add the missing features :-)
* `(1)` - access current transaction data (id, owner, etc.)
* `(2)` - access current block data (indep_hash, height, timestamp)
* `(3)` - access current contract data (id, owner)