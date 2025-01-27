// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* In Ethereum, transactions are not always processed in the order in which they are sent.
An attacker can submit a transaction with a higher gas fee to "preempt" another transaction 
that was already queued, known as a front-running attack */

contract TOD {
    uint256 public price = 1 ether;

    function buy() external payable {
        require(msg.value >= price, "Insufficient payment");
        price = msg.value;
    }
}

/* TOD Example:

1) Alice wants to buy a good for its current price of 1 ether
2) Bob looks at this transaction in the mempool(the pool of pending transactions)
3) Bob submits his own transaction right before, paying 2 ether and offers a higher gas fee 
   to make sure his transaction is processed first
4) Bob's transaction is processed first and the contract updates price to 2 ether
5) Alice transaction fails since 1 ether is no longer enough to meet the new price */
