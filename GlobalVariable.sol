// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//Global Variables 
contract GlobalVariable{
    
    address public owner;

    address public coinbase;
    address public MyBlockhash;
    uint256 public difficulty;
    uint256 public number;
    uint256 public gasLimit;
    uint256 public timestamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasprice;
    bytes public callData;
    bytes4 public Firstfour;

    



    constructor() {
    owner= msg.sender;
    MyBlockhash = block.coinbase;
    difficulty = block.prevrandao;
    gasLimit = block.gaslimit;
    number = block.number;
    timestamp = block.timestamp;
    gasprice = tx.gasprice;
    origin = tx.origin;
    callData = msg.data;
    Firstfour= msg.sig;
    // value = msg.value;
    //nowOn = now;
    }

        
      
    
}