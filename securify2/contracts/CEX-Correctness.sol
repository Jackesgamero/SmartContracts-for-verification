// SPDX-License-Identifier: MIT

pragma solidity 0.5.2;

contract Bank {
	address a;
	address b;
	uint balA;
	uint balB;

	function setBalA(uint v) public {
		balA = v;
	}

	function drainA(address ben) external{
		if (msg.sender != a) { revert(); }
		if (balA > 0) {
			uint v = balA;
			setBalA(0);
			ben.call.value(v)("");
		}
	}
}
