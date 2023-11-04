// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName = "Priyranjan";
    string public tokenAbbrv = "Kumar";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }

    function mint(address account, uint256 value) public {
        if (account == address(0)) {
            revert("Invalid address");
        } else {
            totalSupply += value;
            balances[account] += value;
        }
    }

    function burn(address account, uint256 value) public {
        if (account == address(0)) {
            revert("Invalid address");
        } else if (balances[account] < value) {
            revert("Insufficient balance to burn");
        } else {
            totalSupply -= value;
            balances[account] -= value;
        }
    }
}
