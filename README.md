# Grading System Smart Contract

This repository contains a Solidity smart contract that simulates a simple grading system for students. It uses various Solidity error handling mechanisms such as `require`, `revert`, and `assert` to ensure the integrity of the grading process.

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

The `GradingSystem` smart contract allows setting and managing grades for students identified by their Ethereum address. It includes functionality to set grades, calculate results, reset grades, and retrieve grades while demonstrating error handling with `require`, `revert`, and `assert`.

## Contract Details

### Public Variables

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

## Getting Started

### Prerequisites

- [Solidity ^0.8.9](https://soliditylang.org/) - The programming language used to write this contract.
- [Remix IDE](https://remix.ethereum.org/), [Hardhat](https://hardhat.org/), or any Ethereum development environment - Tools to compile and deploy the contract.

### Deployment

1. **Open the Contract in Remix IDE**:
   - Copy the `GradingSystem` smart contract code into a new file in the Remix IDE.

2. **Compile the Contract**:
   - Use the Solidity compiler version ^0.8.9 to compile the contract.
   
3. **Deploy the Contract**:
   - Deploy the compiled contract to a local Ethereum network or a test network of your choice.
   - Once deployed, you can interact with the contract using the Remix interface or any Ethereum wallet that supports contract interactions.

4. **Interact with the Contract**:
   - Use the deployed contract's functions like `setGrade`, `getGrade`, `result`, and `resetGrade` to manage and retrieve student grades.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
