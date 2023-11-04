// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // public variables here
    string public tokenName = "Priyranjan";
    string public tokenAbbrv = "Kumar";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

     // mint function
    function mint(address account, uint value) public {
            totalSupply += value;
            balances[account] += value;
    }

     // burn function
    function burn(address account, uint value) public {
        if (balances[account] >= value) {
            totalSupply -= value;
            balances[account] -= value;
        }
    }
}


