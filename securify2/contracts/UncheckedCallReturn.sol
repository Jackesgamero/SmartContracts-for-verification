// SPDX-License-Identifier: MIT

//Author: Jaime Martinez Gamero

//The return value of a message call is not checked

contract UncheckedCallReturn {
    function uncheckedCall(address payable _to) external {
        _to.call{value: 1 ether}("");
    }
}
