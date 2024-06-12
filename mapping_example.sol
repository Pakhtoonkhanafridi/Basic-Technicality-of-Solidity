// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract mapping_example
{
    uint[5] public array = [uint(1),2,3,4,5];

    struct student
    {
        string name;
        string subject;
        uint8 marks;
    }

    student public std1;

    function set(string memory _name, string memory _subject, uint8 _marks) public 
    {
         std1.name= _name;
         std1.subject = _subject;
         std1.marks = _marks;
    }

    function structure() public returns(string memory, string memory, uint)
    {
        std1.name = "John";
        std1.subject ="Chemistry";
        std1.marks = 88;

        return (std1.name, std1.subject, std1.marks);
    }

    mapping (address => student) result;
    address[]  student_result;
}