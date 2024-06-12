// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract StateVariables 
{
    //Few think to keep in mind about
    //State Variables
/*
    string public myState;
    string public myNum;

    string public defaultText = "hey pakhtoon Text";
    uint256 public defaultNum = 5;

    bytes public defaultBytes = " Hey Pakhtoon";
    bytes public defaultBytesNO;

    uint256[] public  myNumber;/
    string public myState;
    uint public myNum;

    constructor (string memory _text, uint256 _no)
    {
        myState = _text;
        myNum  = _no;

    } */
    
    string public myState;
    uint public myNum;

    function update(string memory _text, uint _no) public
    {
       myState = _text;
       myNum = _no;

    }
}