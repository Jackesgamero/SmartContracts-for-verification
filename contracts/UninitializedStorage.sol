// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//This vulnerability is no longer possible in version 0.8.0 of Solidity due to changes
//in the compiler but will be studied in version 0.4.0

//Author: Jaime Martinez Gamero

//Uninitialized local storage variables can point to unexpected storage locations in the contract

contract UninitializedStorage {
    /*uint256[] private myArray;
    function uninitializedPointer() external {
        uint[] storage pointer;
        pointer.push(1);
    }*/
}
