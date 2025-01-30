// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

//Arithmetic operation reaches the maximum size of a type.

contract IntegerOverflow {
    uint8 public value = 255;

    function getValue() external returns (uint8) {
        return value;
    }

    function increment() external {
        unchecked {
            value++;
        }
    }
}
