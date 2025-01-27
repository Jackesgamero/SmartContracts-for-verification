// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Due to missing or insufficient access controls, malicious parties can self-destruct the contract

contract UnrestrictedSelfDestruct {
    function destroy(address payable _to) external {
        selfdestruct(_to);
    }
}
