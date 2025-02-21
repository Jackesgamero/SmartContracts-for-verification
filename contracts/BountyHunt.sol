/**
 *Submitted for verification at Etherscan.io on 2017-08-14
 */

pragma solidity 0.5.2;

//Source: https://etherscan.io/address/0xb5766f61911f8b520b0e938aae100834aa3048c6#code

//Added public to functions without visibility keyword
//Replaced throw with revert
//Modified lines 27,28

contract BountyHunt {
    mapping(address => uint) public bountyAmount;
    uint public totalBountyAmount;

    modifier preventTheft() {
        _;
        if (address(this).balance < totalBountyAmount) revert("");
    }

    function grantBounty(
        address beneficiary,
        uint amount
    ) public payable preventTheft {
        bountyAmount[beneficiary] += amount;
        totalBountyAmount += amount;
    }

    function claimBounty() public preventTheft {
        uint balance = bountyAmount[msg.sender];
        (bool success, ) = msg.sender.call.value(balance)("");
        if (success) {
            totalBountyAmount -= balance;
            bountyAmount[msg.sender] = 0;
        }
    }

    function transferBounty(address to, uint value) public preventTheft {
        if (bountyAmount[msg.sender] >= value) {
            bountyAmount[to] += value;
            bountyAmount[msg.sender] -= value;
        }
    }
}
