// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
// This is saved 'StructDeclaration.sol'

struct Todo{
    string text;
    bool completed;
} 


import "./StructDeclaration.sol";

   // An array of "Todo" structs
   Todo[] public  todos;

   //this is a way of struct to import from other file
   
