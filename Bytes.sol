// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract stringBytes 
{
    // returns  0x7562 when passed the string input "Zubin"

    function stringBytes1(string memory input) public pure returns(bytes memory) 
    {
        return bytes(input);

    }

    function BytesInfoStoring(bytes memory input) public pure returns(string memory)
    {
        return string(input);
    }
}