// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract GradingSystem {
    mapping(address => uint) public grades;
    function setGrade(address student, uint grade) public {
        require(grade <= 100, "Grade must be between 0 and 100");
        grades[student] = grade;
    }

    function result(uint totalScore, uint totalSubjects) public pure returns (uint) {
        if (totalScore / totalSubjects < 33) {
            revert("CGPA must be greater than 33");
        }
        // Ensure the calculated CGPA is greater than 33 (this should always be true due to the above check).
        assert(totalScore / totalSubjects >= 33);
        // Return the calculated CGPA.
        return totalScore / totalSubjects;
    }

    function resetGrade(address student) public {
        grades[student] = 0;
        // Assert that the grade has been successfully reset to zero.
        assert(grades[student] == 0);
    }

    function getGrade(address student) public view returns (uint) {
        return grades[student];
    }
}
