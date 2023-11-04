
# MyToken Contract

## Overview

This Solidity smart contract is an ERC20-like token that enables token creation and destruction (minting and burning) functionalities.

## Contract Details

- **Token Name**: Priyranjan
- **Token Abbreviation**: Kumar
- **Initial Total Supply**: 0

## Uses

This contract serves as a foundation for managing a token system. Key uses include:

- **Token Creation**: Users can mint new tokens.
- **Token Destruction**: Users can burn tokens.

## Functions

### `mint(address account, uint value)`

- **Description**: Mints tokens to a specified account.
- **Parameters**:
  - `account`: Address to receive the minted tokens.
  - `value`: Amount of tokens to mint.

### `burn(address account, uint value)`

- **Description**: Burns tokens from a specified account.
- **Parameters**:
  - `account`: Address to burn tokens from.
  - `value`: Amount of tokens to burn.

## How to Use

1. **Minting Tokens**:
   - Use the `mint` function, providing the address and number of tokens to mint.
   - Tokens will be added to the specified account's balance, increasing the total token supply.

2. **Burning Tokens**:
   - Utilize the `burn` function to destroy tokens from a specified account.
   - Ensure the account has a sufficient balance before burning tokens.

## Notes

- Ensure proper validation of addresses and available balances before calling `mint` or `burn` functions.
- Deploy the contract to an Ethereum network and interact with it at its deployed address.
