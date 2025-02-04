// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* Malicious actors can use the Right-To-Left-Override unicode character to force 
RTL text rendering and confuse users as to the real intent of a contract */

contract RightToLeftOverride {
    string public name;

    function setName(string calldata _name) public {
        name = _name;
    }
}
