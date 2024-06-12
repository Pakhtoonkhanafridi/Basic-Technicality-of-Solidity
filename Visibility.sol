// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Base{
    // Private function can only be called
    // Inside this contract
    // Comtracts that inheritance this contract cannot call this function.
    function privateFunc() private pure returns (string memory){
         return "private function called";
    }

    function testPrivateFunc() public pure returns (string memory){
        return privateFunc();
    }

    //Internal function can be called 
    // -inside this contract 
    // - inside contracts that inherit this contract
   function internalFunc() internal pure returns (string memory)
   {
      return "internal function called";
   }

   function testInternalFunc() public pure virtual returns (string memory)
   {
     return internalFunc();
   }

   // Public function can be called
   // - inside this contract
   // - inside contracts that inherit this contract
   // - by other contracts
   function publicFunc() public pure returns (string memory){
     return "public function called";
   }
   // External functions can only be called
   // - by other contracts and accounts
   function externalFunc() external pure returns (string memory){
      return "external function called";
   }

   // this function will not compile since we 're trying to call
   // an external funtion here
   // function testExternal () public pure returns (string memory){
    // return externalFunc(); }
    // state variable
    string private privateVar = "my private variable";
    string internal internalVar = "my internal variable";
    string public publicVar= "my public variable";
    // State variables cannot be external so this code won't compile
    //string external externalVar = "my external variable" ;
}    

contract Child is Base{
    function testInternalFunc() public pure override returns( string memory){
         return  internalFunc();
    }
}