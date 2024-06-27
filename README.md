<<<<<<< HEAD
# Grading System Smart Contract

This repository contains a Solidity smart contract that simulates a simple grading system for students. It uses various Solidity error handling mechanisms such as `require`, `revert`, and `assert` to ensure the integrity of the grading process.
=======
# Smart Contract for handling exceptions

This repository contains a Solidity smart contract that demonstrates the use of error handling mechanisms in Solidity, specifically `require`, `revert`, and `assert`.
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e

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

<<<<<<< HEAD
The `GradingSystem` smart contract allows setting and managing grades for students identified by their Ethereum address. It includes functionality to set grades, calculate results, reset grades, and retrieve grades while demonstrating error handling with `require`, `revert`, and `assert`.
=======
This smart contract illustrates how to manage errors in Solidity using `require`, `revert`, and `assert`. It includes simple functions for setting a value, performing a division, and resetting a value, each demonstrating a different error handling approach.
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e

## Contract Details

### Public Variables

<<<<<<< HEAD
- `mapping(address => uint) public grades;`
  - This mapping stores the grades for each student. The key is the student's Ethereum address, and the value is their grade (ranging from 0 to 100).

### Functions

- `function setGrade(address student, uint grade) public`
  - Sets the grade for a specified student.
  - **Error Handling**:
    - Uses `require` to ensure the grade is between 0 and 100.
    - If the grade is outside this range, the transaction is reverted with the message "Grade must be between 0 and 100".
  - **Parameters**:
    - `student`: The Ethereum address of the student.
    - `grade`: The grade to assign, must be between 0 and 100.

- `function result(uint totalScore, uint totalSubjects) public pure returns (uint)`
  - Calculates the average score (CGPA) and ensures it meets a minimum requirement.
  - **Error Handling**:
    - Uses `revert` to halt execution if the average score is less than 33.
    - Uses `assert` to ensure that the computed average is logically greater than 33.
  - **Parameters**:
    - `totalScore`: The total score obtained by the student.
    - `totalSubjects`: The total number of subjects.
  - **Returns**: The average score (CGPA).

- `function resetGrade(address student) public`
  - Resets the grade of a specified student to 0.
  - **Error Handling**:
    - Uses `assert` to ensure that the grade is reset to 0 successfully.
  - **Parameters**:
    - `student`: The Ethereum address of the student whose grade is to be reset.

- `function getGrade(address student) public view returns (uint)`
  - Retrieves the grade of a specified student.
  - **Parameters**:
    - `student`: The Ethereum address of the student.
  - **Returns**: The grade of the student.
=======
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
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e

## Getting Started

### Prerequisites

- [Solidity ^0.8.9](https://soliditylang.org/) - The programming language used to write this contract.
<<<<<<< HEAD
- [Remix IDE](https://remix.ethereum.org/), [Hardhat](https://hardhat.org/), or any Ethereum development environment - Tools to compile and deploy the contract.
=======
- [Remix IDE](https://remix.ethereum.org/) or any Ethereum development environment - Tools to compile and deploy the contract.
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e

### Deployment

1. **Open the Contract in Remix IDE**:
<<<<<<< HEAD
   - Copy the `GradingSystem` smart contract code into a new file in the Remix IDE.

=======
   - Copy the `ErrorHandlingExample` smart contract code into a new file in the Remix IDE.
   
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e
2. **Compile the Contract**:
   - Use the Solidity compiler version ^0.8.9 to compile the contract.
   
3. **Deploy the Contract**:
   - Deploy the compiled contract to a local Ethereum network or a test network of your choice.
   - Once deployed, you can interact with the contract using the Remix interface or any Ethereum wallet that supports contract interactions.
<<<<<<< HEAD

4. **Interact with the Contract**:
   - Use the deployed contract's functions like `setGrade`, `getGrade`, `result`, and `resetGrade` to manage and retrieve student grades.
=======
>>>>>>> ca63398b5fc859d32deeb73501aa83592b8f518e

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
