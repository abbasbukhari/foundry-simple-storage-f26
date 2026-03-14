// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// This Deply script is written in Solidity, but it shouldn't be considerd a contract that gets deployed to the blockchain. Its there for deploying our code.

// Since it is written in Solidity it still follows the same syntax and rules as any other Solidity contract.We have to import some addtional code to tell Foundry that this is a script.

// Patrick suggests that we should do named imports to make it more clear what we are importing.

// Patrick suggests that should go to https://www.getfoundry.sh/forge/scripting to learn more about scripting in Foundry.

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

// The DeploySimpleStorage contract is a script that will be used to deploy the SimpleStorage contract to the blockchain. It inherits from the Script contract, which is provided by Foundry and contains functions that allow us to interact with the blockchain and deploy contracts.

contract DeploySimpleStorage is Script {
    // Inside the DeploySimpleStorage contract, we have a run function. This is the function that will be executed when we run the script. The run function is where we will write the code to deploy our SimpleStorage contract.

    // Notice that the run function is declared as external, which means that it can be called from outside the contract. This is important because we will be calling this function from the command line when we run the script.

    // The run function is also declared as returns (SimpleStorage), which means that it will return an instance of the SimpleStorage contract after it has been deployed. This allows us to interact with the deployed contract after it has been deployed.

    function run() external returns (SimpleStorage) {
        // The vm.startBroadcast() function is a special function provided by Foundry that tells the script to start broadcasting transactions to the blockchain. This is necessary because we need to broadcast the transaction that deploys our SimpleStorage contract to the blockchain.

        // The vm.startBroadcast() function takes an optional argument, which is the private key of the account that will be used to deploy the contract. If we don't provide a private key, Foundry will use a default account for us.

        // The vm.startBroadcast() function is important because it allows us to deploy our contract to the blockchain and interact with it after it has been deployed.

        // The vm.stopBroadcast() function is another special function provided by Foundry that tells the script to stop broadcasting transactions to the blockchain. This is important because we only want to broadcast the transaction that deploys our SimpleStorage contract, and we don't want to broadcast any other transactions that might be executed in the run function.

        // Then we have the SimpleStorage simpleStorage = new SimpleStorage(); line, which is where we actually deploy the SimpleStorage contract. This line creates a new instance of the SimpleStorage contract and deploys it to the blockchain. The new keyword is used to create a new instance of the contract, and the SimpleStorage() constructor is called to initialize the contract.

        // And finally, we return the simpleStorage instance that we just deployed. This allows us to interact with the deployed contract after it has been deployed.

        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
