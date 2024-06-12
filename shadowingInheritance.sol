// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory){
        return name;
    }

    // shdowing is disallowed in solidity 0.66
    // This will not compile 
    // contract B is A {
    // string public name = "Contract B";

}

   contract C is A {
    //THis is the correct way to inherted state variables.
      constructor() {
        name = "Contract C";
      }
      // C.getName returns " Contract C"

      
   }