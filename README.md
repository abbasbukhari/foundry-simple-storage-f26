# Foundry Simple Storage

A beginner Solidity project built with Foundry, focused on understanding the fundamentals relevant to **smart contract auditing**.

The emphasis here is on **code clarity and thorough comments** — each contract is annotated to explain what the code does and why, making it easier to reason about contract behavior during a security review.

## What's in this project

### `src/SimpleStorage.sol`
A basic storage contract that demonstrates core Solidity concepts:
- **State variables** — data stored on-chain
- **Structs** — custom data types grouping related fields
- **Dynamic arrays** — storing a list of `Person` structs
- **Mappings** — key-value lookups (name → favorite number)
- **View functions** — reading state without modifying it

### `script/DeploySimpleStorage.s.sol`
A Foundry deployment script that demonstrates:
- How Foundry scripts differ from contracts (they use `vm` cheatcodes)
- `vm.startBroadcast()` / `vm.stopBroadcast()` — scoping which transactions get sent on-chain
- Returning a deployed contract instance for post-deployment use

## Tooling

Built with [Foundry](https://book.getfoundry.sh/). Key commands:

```shell
forge build       # Compile contracts
forge test        # Run tests
forge fmt         # Format code
forge snapshot    # Gas snapshots
anvil             # Spin up a local Ethereum node
```

## Credits

Based on the [Cyfrin Foundry Simple Storage](https://github.com/Cyfrin/foundry-simple-storage-cu/tree/main) course by [Patrick Collins](https://github.com/patrickalphac).

## Future work

- [ ] Write tests using Forge
- [ ] Deploy to a local Anvil chain or a public testnet
