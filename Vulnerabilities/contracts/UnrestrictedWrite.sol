// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* If an attacker is able to write to arbitrary storage locations of a contract it is
posible to corrupt the storage */

contract UnrestrictedWrite {
    uint public writable;
    function unrestrictedWrite(uint _value) external {
        writable = _value;
    }
}
