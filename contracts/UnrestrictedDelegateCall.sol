// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* The function delegatecall() allows a smart contract to dynamically load code from a 
different address at runtime, if the call is done to an untrusted contract it can change 
any storage values of the caller and has full control over caller's balance */

contract UnrestrictedDelegateCall {
    address public code;

    function delegate(address _code, bytes memory data) external {
        code = _code;
        (bool success, ) = _code.delegatecall(data);
        require(success, "Delegatecall failed");
    }
}
