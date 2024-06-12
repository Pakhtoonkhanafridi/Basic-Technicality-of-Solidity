// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyContract
{
    uint256 myVariable;

    function set(uint256 _myVariable) public 
    {
          myVariable = _myVariable;
    }

    function get() public view returns(uint256) 
    {
        return myVariable;
    }
}