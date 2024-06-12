// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//FUNCTION MODIFIER

//IMPORTANCE NOTES
//-- MODIFIER ARE CODE THAT CAN BE RUN BEFORE AND AFTER THE FUNCTION CALL
//--- GENERAL USE FOR 3 REASION
//--RESTRICT ACCESS  VALIDATE INPUTS, GUARD  against reentrancy hacks

contract FunctionModifier{

    address public owner;
    uint256 public x = 10;
    bool public locked;  

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _; // _ notation means execute the other function
    }

    modifier validateData(address _addr)
    {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }
    
    function decrement(uint256 i) public noReentrancy{
        x -= 1;

        if(i > 1){
            decrement(i - 1);
        }
        
    }


}