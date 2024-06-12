// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// SOLIDITY - FOR LOOP
contract forwhileLoop{

//     // SYNTAX
//     for(initialization; test condition; iteration statement){
//         statemnent or block of code to be executed if the condition fullfill
//     }
 
   uint256[] data;

   function loop() public returns(uint256[] memory){
      for(uint256 i =0; i <5; i++  ){
         data.push(i);
      }
      return data;
      
   }
}