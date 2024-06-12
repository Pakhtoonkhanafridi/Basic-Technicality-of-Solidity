// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
// WE HAVE THREE WAY OF DATA STORAGE THE ONE IS MEMORY , STORAGE AND CALLDATA
//THE STORAGE DATA WILL STORE ON THE BLOCKCHAIN
// THE MEMORY DATA WILL STORE ON THE LOCAL FUNCTIONS
// THE CALLDATA IS STORE IN THE AUGUMENT

contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping( uint => MyStruct) myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        //create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr, 
        mapping(uint => address) storage _map,
        MyStruct storage _myStruc
    ) internal {
        // todo with storage variables
    }

    // you can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory){
        // do something with memory array
    }

      function h(uint[] calldata _arr) external {
         // do something with calldata array
         
      }

}
 