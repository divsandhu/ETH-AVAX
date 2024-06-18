// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Assignment {
    uint public value;
    function setValue(uint newValue) public {
        require(newValue > 0, "Value must be greater than zero");
        value = newValue;
    }

    function divide(uint numerator, uint denominator) public pure returns (uint) {
        if (denominator == 0) {
            revert("Division by zero is not allowed");
        }
        return numerator / denominator;
    }

    function resetValue() public {

        value = 0;
        assert(value == 0);
    }
}
