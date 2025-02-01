// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

// Due to missing or insufficient access controls, malicious parties can self-destruct the contract

contract UnrestrictedSelfDestruct {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function getOwner() external view returns (address) {
        return owner;
    }

    function destroy(address payable _to) external {
        selfdestruct(_to);
    }
}
