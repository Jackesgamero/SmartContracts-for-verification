// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

//Author: Jaime Martínez Gamero

//Uninitialized local storage variables can point to unexpected storage locations in the contract

contract testContract{

    uint256 public A;
    uint256 public B;

    struct Product {
        uint256 quantity;
        uint256 price;
    }

    function test(uint256 _quantity, uint256 _price) public{
        Product p;
        p.quantity = _quantity;
        p.price = _price;
    }
}
