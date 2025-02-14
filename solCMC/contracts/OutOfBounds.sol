//SPD-License-Identifier: MIT

pragma solidity ^0.8.0;

contract OutOfBounds{
	uint[2] public myArray;
	
	function getNumber() public view returns(uint){
		return myArray[3];
	}
}

