// SPDX-License-Identifier: MIT

pragma solidity 0.5.2;

//Author: Jaime Martinez Gamero

/* If an attacker is able to write to arbitrary storage locations of a contract it is
posible to corrupt the storage */

contract UnrestrictedWrite {
    address owner;

    function updateOwnership(address _owner) public {
        owner = _owner;
    }
}
