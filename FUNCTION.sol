// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Function{
    // Functions can return multiple values.
    function returnMemory()
    public 
    pure 
    returns (
        uint,
        bool,
        uint
    )
 {
    return (1, true, 2);
 }   

   //Return values by named.
   function named() 
   public 
   pure returns(
        uint x,
        bool b,
        uint y
   )
   {
     return (1, true, 2);
   }

  // Return values can be assigned to their name.
   // In this case the return statement can be omitted.
   function returnMany()
    public
    pure
    returns (
        uint,
        bool,
        uint
    )
{
    return (1, true, 2);
}

   function assigned()
      public 
      pure 
      returns(
         uint x,
         bool b,
         uint y
      )
 {
    x = 1;
    b = true;
    y = 2;
 }

 // Use DESTRUCTURING ASSIGNEMENT WHEN CALLING ANOTHER
 // FUNCTION THAT RETURNS MULTIPLE VALUES.

  function destructuringAssignements()
   public 
   pure 
   returns(
      uint,
      bool,
      uint,
      uint,
      uint
   )
 {
    (uint i, bool b, uint j) = returnMany();

    // Values can be left out.
    (uint x, , uint y) = (4,5,6);
    return (i,b , j, x, y);
 }

 // Can not use map for either input or output
  function arrayInput(uint[] memory _arr) public {}
  // Can use array for output
  uint[] public arr;

  function arrayOutput() public view returns (uint[] memory){
     return arr;
  }
}

// Call function with key _value inputs
 contract XYZ {
    function someFuncWithManyInputs(
        uint x,
        uint y,
        uint z,
        address a,
        bool b,
        string memory c
    ) public pure returns (uint) {}

    function callFunc() external pure returns(uint) {
        return someFuncWithManyInputs(1, 2, 3,address (0), true, "c");
    }

    function callFuncWithkeyValue() external pure returns(uint) {
        return 
          someFuncWithManyInputs({a: address(0), b: true, c: 'c', x:1, y: 2, z:3});
    }
 }
