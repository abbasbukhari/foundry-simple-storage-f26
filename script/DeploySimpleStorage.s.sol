// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// This Deply script is written in Solidity, but it shouldn't be considerd a contract that gets deployed to the blockchain. Its there for deploying our code.

// Since it is written in Solidity it still follows the same syntax and rules as any other Solidity contract.We have to import some addtional code to tell Foundry that this is a script.

// Patrick suggests that should go to https://www.getfoundry.sh/forge/scripting to learn more about scripting in Foundry.

import "forge-std/Script.sol";
import "../src/SimpleStorage.sol";

// The DeploySimpleStorage contract is a script that will be used to deploy the SimpleStorage contract to the blockchain. It inherits from the Script contract, which is provided by Foundry and contains functions that allow us to interact with the blockchain and deploy contracts.

contract DeploySimpleStorage is Script {

}
