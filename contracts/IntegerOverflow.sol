// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Arithmetic operation reaches the maximum size of a type.

contract IntegerOverflow {
    uint8 public value = 255;

    function causeOverflow() external {
        unchecked {
            value++;
        }
    }
}
