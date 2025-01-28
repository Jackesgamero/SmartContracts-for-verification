// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

//Uninitialized local storage variables can point to unexpected storage locations in the contract

contract UninitializedStorage {
    uint256[] private myArray;
    function uninitializedPointer() external {
        uint[] storage pointer;
        pointer.push(1);
    }
}
