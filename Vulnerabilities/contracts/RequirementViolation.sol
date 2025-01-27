// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* require() function is meant to check preconditions, if the condition used to express 
the requirement is too strong there is a requirement violation vulnerability */

contract RequirementViolation {
    Counter private c = new Counter();
    function increase() external view returns (uint256) {
        return c.inc(0);
    }
}

contract Counter {
    function inc(uint256 x) external pure returns (uint256) {
        require(0 < x);
        x++;
        return x;
    }
}
