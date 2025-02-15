// SPDX-License-Identifier: MIT

//Source: https://swcregistry.io/docs/SWC-124/

/* If an attacker is able to write to arbitrary storage locations of a contract it is
posible to corrupt the storage */

contract UnrestrictedWrite {
    uint256[] private bonusCodes = new uint256[](0);

    function PushBonusCode(uint256 c) external {
        bonusCodes.push(c);
    }

    function PopBonusCode() external {
        require(0 < bonusCodes.length);
        bonusCodes.pop();
    }

    function UpdateBonusCodeAt(uint256 idx, uint256 c) external {
        require(idx < bonusCodes.length);
        bonusCodes[idx] = c;
    }
}
