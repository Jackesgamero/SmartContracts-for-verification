// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Solidity allows for ambiguous naming of state variables when inheritance is used, 
in complex contract systems this condition could go unnoticed and subsequently lead to security issues */

contract Base {
    uint256 public value = 10;
}

contract ShadowedStateVar is Base {
    uint256 private value = 10;

    function shadowVar() external {
        uint256 value = 20;
        value += 1;
    }
}
