// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//IF ELSE
contract IFELSE{

    uint256 public myNum = 5;
    string public myString;

    // function get(uint _num) public  returns(string memory){
    //     if(_num == 5){
    //         myString = "Hey the Value of muNum is 5";
    //     } else if(_num == 4){
    //         myString = "Not 5";
    //     } else{
    //         myString = "Hey pakhtoon";
    //     }

    //}

      function shortHand(uint256 _num) public returns(string memory){
        // if(_num == 5){
        //     myString = "Pakhtoon";
        // }else {
        //     myString =
        // }
        return _num == 5 ?myString = "Pakhtoon" : myString = "No buddy ";
      }

}