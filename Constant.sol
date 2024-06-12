// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//CONSTANTS
contract Constants{
    //130242
    //address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //130242
    //address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // 118171

    address public constant myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
    function getConstant() public view returns(address){
        return myAddr;
    }
}