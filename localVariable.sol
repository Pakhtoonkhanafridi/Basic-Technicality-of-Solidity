// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//Local Variables
contract LocalVariables{

    uint public myNumber;

    //Function For Local Variables

    function local() public  returns(address, uint256 ,uint256){
        //Variables Define inside the FUNCTION SCOPE
        // NOT STORE ON THE BLOCHAIN

        uint256 i = 345;
        myNumber = i;

        i +=45; 
       address myAddress = address(1);
        
        return ( myAddress, myNumber, i);
    }
}