// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* Contracts often need access to time values to perform certain types of functionality,
malicious miners can alter the timestamp of their blocks, especially if they can gain advantages by doing so*/

contract Lottery {
    function lotteryWinner() public view returns (uint256) {
        return uint256(keccak256(abi.encodePacked(block.timestamp))) % 100000;
    }
}
