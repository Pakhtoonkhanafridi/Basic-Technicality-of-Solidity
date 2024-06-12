// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract NFTCount {
    uint256 public numberOfNFT;

   //Check total Number of NFT
   function checkTotalNFT() public view returns(uint256){ 

   return numberOfNFT;

   }
    //This function will increment the NFT Number
  function addNFT() public {
    numberOfNFT ++; 
  /*  nubmerOfNFT += 1;*/
  }

  function deleteNFT() public{
    numberOfNFT -= 1;
  }
}