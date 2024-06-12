// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract HelloWorld
{
    string message;
    constructor() 
    {
        message = "Hello Pakistan";
    }

    function sayHelo() public view returns(string memory)
    {
        return message;
    }
}