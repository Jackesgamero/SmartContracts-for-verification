// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* tx.origin is a global variable in Solidity which returns the address of the account 
that sent the transaction. Using the variable for authorization could make a contract 
vulnerable if an authorized account calls into a malicious contract */

contract TxOrigin {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function txOriginCheck() external {
        require(tx.origin == owner, "Not owner");
        selfdestruct(payable(owner));
    }
}
