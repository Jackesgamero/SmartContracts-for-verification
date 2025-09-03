// SPDX-License-Identifier: MIT

pragma solidity 0.5.2;

contract Bank {
	uint lock;
	mapping (address => uint) bal;
	
	function drain(address a) external { 
		if (lock == 1) { revert(); } 
		lock = 1;
		a.call.value(bal[msg.sender])("");
		bal[msg.sender] = 0; 
		lock = 0; 
	}
}
