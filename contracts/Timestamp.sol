// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Author: Jaime Martinez Gamero

/* Contracts often need access to time values to perform certain types of functionality,
malicious validators can alter the timestamp of their blocks, especially if they can gain advantages by doing so*/

contract Lottery {
    function generateLotteryWinner() external view returns (uint256) {
        uint256 winner = (block.timestamp * block.timestamp) % 100000;
        return winner < 10000 ? winner + 10000 : winner;
    }
}
