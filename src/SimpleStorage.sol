// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // version of solidity (^) greater than 0.8.18

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes, string
    bool hasFavourite = false; // default value is false
    uint256 myFavouriteNum = 88; // if no value assigned then default is 0;
    string favouriteString = "Amey";
    address myAddr = 0x4E5C8a1Af0945983d59f621e1aD6DA7d7D80ff42;
    bytes32 favour = "cat";

    // ARRAYS
    uint256[] listOfFavouriteNum;

    // STRUCT
    struct Person {
        uint256 favouriteNum;
        string name;
    }

    Person public myFriend = Person(7, "Omkar");

    // Arrays of structure type
    // Static arr
    Person[] public listOfPeople;

    // MAPPING
    mapping(string => uint256) public nameToFavouriteNumber;

    // FUNCTIONS -> virtual if getting overriden
    // public, internal, external, private -> Visibility type
    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNum = _favouriteNumber;
    }

    // pure, view -> func type
    function retrieve() public view returns (uint256) {
        return myFavouriteNum;
    }

    // Dynamic arr
    function addPerson(string memory _name, uint256 _favouriteNum) public {
        Person memory newPer = Person(_favouriteNum, _name);
        nameToFavouriteNumber[_name] = _favouriteNum; // key-value pair
        listOfPeople.push(newPer);
        // .push(Person(_favouriteNum, _name));
    }
    // Data Locations
    // (calldata, memory, storage -> MOST IMP), (stack, code, logs)
}
