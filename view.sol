// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


//VIEW
contract View
{
    uint256 public num1 = 2;
    uint256 public num2 = 7;

    //USING VIEW TO CHECK THE STATE VARIABLE 

    // What is  I want to caclute
   // function getResults() public returns(uint256 product, uint256 total)
    function getResults() public view returns(uint256, uint256)
    {
        // uint256 num1 = 20;
        // uint256 num2 = 30;

        // num1  +=5;
        // num2  += 7;

      uint256  product = num1 * num2;
      uint256 total = num1 + num2;

        return(product, total);

       
    }
    

} 