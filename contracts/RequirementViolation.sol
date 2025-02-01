// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Author: Jaime Martinez Gamero

/* require() function is meant to check preconditions, if the condition used to express 
the requirement is too strong there is a requirement violation vulnerability */

contract RequirementViolation {
    function isEven(uint256 x) external pure returns (bool) {
        require(false);
        return x % 2 == 0;
    }
}
