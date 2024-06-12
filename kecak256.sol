// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract HasFunction{
    function hash(
        string memory _text,
        uint _num,
        address _addr
    ) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_text, _num, _addr));
        
    }

    // Example of hash collision
        // Hash collection can occure when you pass more than one dynameic data types
        // to abi.encodePacked. In such case, you should use abi. encode instead.

    function collision(string memory _text, string memory _anotherText)
    public 
    pure returns (bytes32)
    {
        // encodePacked(AAA, BBB) -> AAABBB
        // encodePacked(AA, ABBB) -> AAABBB
        return keccak256(abi.encodePacked(_text, _anotherText));
    }
        
}

contract GuessTheMagicWord
{
     bytes32 public answer = 0x63616e6469646174653100000000000000000000000000000000000000000000;
// magic word is "solidity"
     function guess(string memory _word) public view returns(bool){
        return keccak256(abi.encodePacked(_word)) == answer;
     }
     }
