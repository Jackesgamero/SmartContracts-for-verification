// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* Due to missing or insufficient access controls, malicious parties 
can withdraw some or all Ether from the contract account */

contract UnprotectedEtherW {
    function withdrawAll(address payable _to) external {
        _to.transfer(address(this).balance);
    }
}
