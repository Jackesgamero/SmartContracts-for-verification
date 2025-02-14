//SPD-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ZeroDivision{
	uint256 public num = 5;
	
	function division() external view returns(uint256){
		return num/0;
	}
}
