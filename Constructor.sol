// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//CONSTRUCTOR IS BASICALLY OWN FUNCTION , ONLY EXECUTED WHEN ON THE TIME OF CREATION


contract X
{
      string public name;

      constructor(string memory _name) {
        name = _name;

      }
}

// Base contract Y
contract Y {
    string public text;

    constructor(string memory _text ){
        text = _text;

    }
    
}

// There are 2 ways to initialize parent contract with parameters

// Pass the parameters here in the inheritance list.

contract B is X ("Input the"), Y("input to y") {

}

contract C is  X,Y {
    //pass the parameter here in the  constructor,
    // similar to function modifiers.
    constructor(string memory _name, string memory _text) X(_name) Y(_text){

    }


}

//paraent constructors are always called in order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract

// Oder of constructors calledd

// 1. X
// 2. Y
// 3. D
contract D is X, Y
{
    constructor() X("X was  called") Y("Y was called"){}

}

// Order of constructor called :
// 1. X
// 2. Y
// 3. E
contract E is X, Y {
    constructor() Y("Y was called ") X("X was called"){}

}