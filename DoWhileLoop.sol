// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// SOlidity - DO WHILE LOOP

contract Dowhile{
    // do{
    //     block of statement to be executed

    // }while(condition)
    uint256[] data;
    uint j= 0;

    function loop() public returns(uint256[] memory){
        do{
            j++;
            data.push();
        }
        while(j< 5);
        return data;

    }
}