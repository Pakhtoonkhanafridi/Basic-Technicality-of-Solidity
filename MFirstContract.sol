// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract myFirstContract{
    string public hey = "Hey Pakhtoon";
    uint256 public hum = 4;
/*
     constructor(string memory _hey, uint _no)
    {
      hey = _hey;
      hum = _no;
   }*/

   function addInfo(string memory _hey, uint256 _no) public {
    hey= _hey;
    hum= _no;
   }
}



