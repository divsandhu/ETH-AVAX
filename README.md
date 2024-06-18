# Smart Contract for handling exceptions

This repository contains a Solidity smart contract named that demonstrates the use of error handling mechanisms in Solidity, specifically `require`, `revert`, and `assert`.

## Table of Contents

- [Introduction](#introduction)
- [Contract Details](#contract-details)
  - [Public Variables](#public-variables)
  - [Functions](#functions)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
- [License](#license)

## Introduction

This smart contract illustrates how to manage errors in Solidity using `require`, `revert`, and `assert`. It includes simple functions for setting a value, performing a division, and resetting a value, each demonstrating a different error handling approach.

## Contract Details

### Public Variables

- `uint public value;`
  - Stores an unsigned integer value that can be set and reset by the contract functions.

### Functions

- `function setValue(uint newValue) public`
  - Sets the `value` to a new positive integer.
  - **Error Handling**:
    - Uses `require` to ensure that `newValue` is greater than zero.
    - If `newValue` is less than or equal to zero, the transaction is reverted with the message "Value must be greater than zero".
  - **Parameters**:
    - `newValue`: The new value to set, must be greater than zero.

- `function divide(uint numerator, uint denominator) public pure returns (uint)`
  - Returns the result of dividing the `numerator` by the `denominator`.
  - **Error Handling**:
    - Checks if the `denominator` is zero and uses `revert` to explicitly halt execution with the message "Division by zero is not allowed".
  - **Parameters**:
    - `numerator`: The number to be divided.
    - `denominator`: The number by which to divide the numerator, must not be zero.
  - **Returns**: The result of the division.

- `function resetValue() public`
  - Resets the `value` to zero.
  - **Error Handling**:
    - Uses `assert` to ensure that `value` is zero after the reset operation.
    - If the reset operation fails, the transaction is reverted, indicating a critical issue.
  - **No parameters**.

## Getting Started

### Prerequisites

- [Solidity ^0.8.9](https://soliditylang.org/) - The programming language used to write this contract.
- [Remix IDE](https://remix.ethereum.org/) or any Ethereum development environment - Tools to compile and deploy the contract.

### Deployment

1. **Open the Contract in Remix IDE**:
   - Copy the `ErrorHandlingExample` smart contract code into a new file in the Remix IDE.
   
2. **Compile the Contract**:
   - Use the Solidity compiler version ^0.8.9 to compile the contract.
   
3. **Deploy the Contract**:
   - Deploy the compiled contract to a local Ethereum network or a test network of your choice.
   - Once deployed, you can interact with the contract using the Remix interface or any Ethereum wallet that supports contract interactions.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
