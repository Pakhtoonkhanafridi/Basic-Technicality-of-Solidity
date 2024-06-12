// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract DataTypes
{
    bool public hey;
    bool public no = true;

    //uint stand for unsigner integer, meaning no negative integer only positive
    
  //  uint8 // range 0 - 2 **8 -1 //255
    //uint16 // range 0 - 2 **16 -1 //65535
    //uint256 /// range 0-8** -1 //1.159209e+77
    //for the purpose of to save  gas fees 
    //for that the ranges are define

   uint public u8 = 1;
   uint public u256 = 456;
   uint public u = 123;

   //Negative number are allow of in type with differeent ranges

   //int256 ranges from -2 ** 255 to 127 -1 = 5.7896045e+76
   //int128 ranges from -2 ** 127 to 127 -1 = 5.7896045e+76
   
   int8 i18 = -1;
   int public i1256 = 456;
   int public i = -1234;

   //minumm and maximum value int 

   int public mintInt = type(int).min;
   int public maxtInt = type(int).max;


   //Array
   // In solidity, the data types represent a sequence of bytes, so generally there are two types of bytes

   //--- fixed-sized bytes arrays
   // --- dynamically-sized bytes array
   //  SO when you define byte , In smart contract it's represent dynameic bytes array

  // bytes1 public a;
  // bytes1 public b;

   bytes1 public a = 0xb5; //[10110101]
   bytes1 public b = 0x56; //[01010101]

   // Address types 

   address public key;
   address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

   //Defaults values

   bool public defaultBool;// false
   uint public nummber=0; //0
   int public defaultInt; // 0
   address public mey; //0x000000000000

   

}