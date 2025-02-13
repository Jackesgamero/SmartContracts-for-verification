// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

//Arithmetic operation reaches the maximum size of a type.

contract IntegerOverflow {
    uint8 public value = 255;

    function increment() public {
        unchecked {
            value++;
        }
    }

    //Rule to be checked by solCMC
    function invariant() public {
        uint8 initvalue = value;
        increment();
        assert(initvalue < value);
    }
}
