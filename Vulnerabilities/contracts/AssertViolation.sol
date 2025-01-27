// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* assert() function is meant to assert invariants, properly 
functioning code should never reach a failing assert statement */

contract AssertViolation {
    function causeAssertViolation() public pure {
        assert(false);
    }
}
