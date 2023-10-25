// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public token_name = "Rohit";
    string public token_symbol = "Kumar";
    uint public total_amount = 0;

    // mapping variable
    mapping(address => uint) public balance;

    // mint function
    function mint(address addr, uint val) public {
        total_amount += val;
        balance[addr] += val;
    }

    // burn function
    function burn(address addr, uint val) public {
        if(balance[addr] >= val) {
            total_amount -= val;
            balance[addr] -= val;
        } 
    }
}
