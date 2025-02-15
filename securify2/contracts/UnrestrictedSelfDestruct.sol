// SPDX-License-Identifier: MIT

//Author: Jaime Martinez Gamero

// Due to missing or insufficient access controls, malicious parties can self-destruct the contract

contract UnrestrictedSelfDestruct {
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function destroy(address payable _to) external {
        selfdestruct(_to);
    }
}
