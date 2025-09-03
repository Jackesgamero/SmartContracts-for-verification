// SPDX-License-Identifier: MIT

pragma solidity 0.5.2;

//Author: Jaime Martinez Gamero

/* Due to missing or insufficient access controls, malicious parties
can withdraw some or all Ether from the contract account */

contract UnprotectedEtherW {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function withdrawAll(address payable _to) external {
        (bool success, ) = _to.call.value(address(this).balance)("");
        require(success, "Withdrawal failed");
    }
}
