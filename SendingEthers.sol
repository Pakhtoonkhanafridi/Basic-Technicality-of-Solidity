// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Three methods we have in solidity the first we have transfer, send , and call
// Transfer (2300 gas, returns bool)
// send(2300 gas, returns bool)
// call (followed all gas or set , returns bool)

contract ReceiveEther {
    /*
         send Ether
             |
        msg.sender is empty ?
           /          \
    receive() exists?  fallback()
        /         \
    receive      fallback()
    
    */
    receive() external payable { }

    //Fallback function is called when msg.data is not emty
   fallback() external payable{}

   function getBalance() public view returns (uint){
      return  address(this).balance;
   }
}

contract SendEther{
    function sendViaTransfer(address payable _to) public payable{
       // This function is no longer recommended for sending Ether.
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure
        // This function is not recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");   
    }

    function sendViaCall(address payable _to) public payable {
        //call returns a boolean value inicating success or failure.
        // This is the current recommended method to use.
       (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send ether");   
    }
}