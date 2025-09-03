// SPDX-License-Identifier: MIT

pragma solidity 0.5.2;

//This vulnerability is no longer possible due to changes in the compiler

//Author: Jaime Martinez Gamero

/* Solidity allows for ambiguous naming of state variables when inheritance is used, 
in complex contract systems this condition could go unnoticed and subsequently lead to security issues */

contract Base {
    uint256 public value = 10;
}

contract ShadowedStateVar is Base {
    uint256 private value = 10;

    function shadowVar() external pure {
        uint256 value = 20;
        value += 1;
    }
}
