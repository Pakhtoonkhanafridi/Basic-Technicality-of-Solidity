// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// SOLIDITY ERROR HANDLING
//----require statement 

 contract Require{
    function checkInput(uint256 _Input) public view returns(string memory){
        require(_Input >= 0, "invalid uint8");
        require(_Input <= 255, "invalid uint8");

        return "Input is Uint8";
    }

    function Odd(uint256 _input) public view returns(bool){
        return (_input % 2 != 0);
        return true;

    }
 } 