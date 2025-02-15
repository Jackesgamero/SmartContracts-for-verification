// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

// Source: https://github.com/ethereum/solidity/issues/14618

/* A malicious contract calls back into the calling contract 
before the first invocation of the function is finished */

contract Reentrancy {
    mapping(address => uint) public balances;

    function deposit() external payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        if (balances[msg.sender] > 0) {
            (bool success, ) = msg.sender.call{value: balances[msg.sender]}("");
            require(success, "Transfer failed");
            balances[msg.sender] = 0;
        }
    }
}

/*
    Reentrancy attack:

    1) Alice deposit 1 ether
    2) Alice call withdraw() and, since Alice has 1 ether, the condition balances[Alice] > 0 is satisfied
    3) The contract executes line 18 which sends to Alice the ether stored in balances[msg.sender]
    4) Alice uses a malicious contract instead of a standar address that has a fallback() or receive() function
       that executes code automatically when ether is received 
    5) This functions calls again withdraw() before the original contract has updated the balances[msg.sender] state     
*/

