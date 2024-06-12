// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract setGetNo
{  
    string name = 'Pakhtoon Khan';
    string UserInput;
    function set(string memory finalValue) public 
    {
        UserInput= finalValue;
    }

    function get() public view returns(string memory,string memory)
    {
        return (name, UserInput);
    
    }
}