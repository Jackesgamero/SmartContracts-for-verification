// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* assert() function is meant to assert invariants, properly 
functioning code should never reach a failing assert statement */

contract AssertViolation {
    uint256 public points;

    function addPoints(uint256 amount) external {
        points += amount;
        assert(points < amount);
    }
}
