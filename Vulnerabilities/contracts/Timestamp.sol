// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Contracts often need access to time values to perform certain types of functionality,
malicious miners can alter the timestamp of their blocks, especially if they can gain advantages by doing so*/

contract Timestamp {
    function timestampDependence() public view returns (bool) {
        return block.timestamp % 2 == 0;
    }
}
