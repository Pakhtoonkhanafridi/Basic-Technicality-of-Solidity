// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Fallback {
    event Log(string func, uint gas);

    //Fallback function must be declared as external.
    fallback() external payable {
        // send / transfer (forward 23000 gas to this callback function)
        // call (forword all of the gas)
        emit Log("fallback", gasleft());
     }

     //Receive is variant of fallback that is triggered when msg.dat is empty
     receive() external payable { 
        emit Log("receive", gasleft());
     }

     //helper function to check the balance of this contract
     function getBalance() public view returns (uint)
     {
        return address(this).balance;
     }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable
    {
        _to.transfer(msg.value);
    } 

    function callFallback(address payable _to) public payable{
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Faild to send Ether");
        
    }
}