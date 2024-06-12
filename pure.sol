// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//PURE
contract Pure 
{
    uint256 num1 = 4;
    uint256 num2 = 10;


  function getData() public view returns(uint256, uint256)
  {

    uint256 muNum1 = 30;
    uint256 muNum2 = 50;


    uint256 product =muNum1 * num1; 
    uint256 total =muNum2* num2; 

    return (product, total) ;
  }

}   