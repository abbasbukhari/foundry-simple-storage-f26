// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    // This is a state variable, which gets stored on the blockchain.
    uint256 myFavoriteNumber;

    // This is a struct, which is a custom data type that can hold multiple values.
    // Right now, it holds a person's favorite number and their name.
    // The Person struct is used to create a list of people, where each person has a name and a favorite number.
    // The favorite number is stored as a uint256, which is an unsigned integer that can hold values from 0 to 2^256 - 1.
    // The name is stored as a string, which is a dynamic array of characters.
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // Person[] public anArray;
    // The listOfPeople variable is an array of Person structs. It is declared as public, which means that it can be accessed from outside the contract.
    // Notice how Person is used as a data type for the listOfPeople array. This allows us to store multiple Person structs in the listOfPeople array.
    // The listOfPeople variable is a dynamic array, which means that it can grow and shrink in size as we add and remove people from the list.
    Person[] public listOfPeople;

    // This is a mapping, which is a key-value store. It allows us to associate a string (the person's name) with a uint256 (their favorite number).
    // The nameToFavoriteNumber mapping is declared as public, which means that it can be accessed from outside the contract. This allows us to look up a person's favorite number by their name.
    mapping(string => uint256) public nameToFavoriteNumber;

    // This Store function takes a uint256 _favoriteNumber as an argument and assigns it to the myFavoriteNumber state variable. This function is public, which means that it can be called from outside the contract.
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // This retrieve function is a view function, which means that it does not modify the state of the contract. It simply returns the value of the myFavoriteNumber state variable. This function is public, which means that it can be called from outside the contract.
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // This addPerson function takes a string _name and a uint256 _favoriteNumber as arguments. It creates a new Person struct with the provided name and favorite number, and then pushes that struct onto the listOfPeople array.

    // Notice how addPerson uses string memory _name as the parameter type for the name. In Solidity, when you want to use a string as a parameter, you need to specify that it is stored in memory. This is because strings are dynamic arrays, and they need to be stored in memory when they are passed as parameters to functions.

    // The addPerson function uses the listOfpeople array to store the new Person struct. The .push() method is used to add the new Person struct to the end of the listOfPeople array.The .push() method is a built-in function in Solidity that allows you to add a new element to the end of an array. In this case, we are pushing a new Person struct onto the listOfPeople array.

    // The addPerson function then updates the nameToFavoriteNumber mapping, it uses the [_name] syntax to access the value associated with the provided name in the mapping, and assigns it the value of _favoriteNumber. This allows us to look up a person's favorite number by their name using the nameToFavoriteNumber mapping.

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
