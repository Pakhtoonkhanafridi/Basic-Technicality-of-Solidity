// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Operators

{
    function getResult() public view returns(uint){

    uint local_var1=10;
    uint local_var2=20;
    
    uint result= local_var1 + local_var2;
    return  result;
    }

}