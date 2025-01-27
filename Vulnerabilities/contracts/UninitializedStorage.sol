// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Uninitialized local storage variables can point to unexpected storage locations in the contract

contract UninitializedStorage {
    uint256[] private myArrayr;
    function uninitializedPointer() external {
        uint[] storage pointer;
        pointer.push(1);
    }
}
