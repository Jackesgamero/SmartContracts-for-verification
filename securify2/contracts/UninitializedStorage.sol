// SPDX-License-Identifier: MIT

////This vulnerability is no longer possible due to changes in the compiler

//Based on: https://swcregistry.io/docs/SWC-109/

//Uninitialized local storage variables can point to unexpected storage locations in the contract

contract UninitializedStorage {	
	struct Data {
		address user;
		uint256 value;
	}
	
	Data[] public records;
	
	function addRecord(uint256 _value) external {
		Data memory newData;
		newData.user = msg.sender;
		newData.value = _value;
		records.push(newData);
	}
}
