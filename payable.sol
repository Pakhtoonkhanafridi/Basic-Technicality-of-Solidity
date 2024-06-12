// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Payable{
    // Payable address can recieve Ether
    address payable public owner;

    // payable constructor can recieve Ether
   constructor() payable{
     owner = payable(msg.sender);
   }  

  // Function to deposit Ether into this contract
  // Call this function along with some Ether.
  // The balance of this contract will be automatically updated.
  function deposit() public payable {}
  // Call this function along with some Ether.
  // The function will throw an error since this function is no payable.
  function nonPayable () public {}
     // Function to withdraw all Ether form this contract.
  function withdraw() public {
    // get the amount of ether stored in this contract
    uint amount = address(this).balance;

    // sende  all Ether to owner
    //owner can receive ether since the addrss of the owner can be payable
    (bool success,) = owner.call{value: amount}("");
    require(success, "Failed to send Ether");

  }
   //Function to transfer Ether from this contract to address from input
   function transfer(address payable _to, uint _amount) public {
    // Note that " to " is decleared as payable
    (bool success, ) = _to.call{value: _amount} ("");
    require(success, "failed to send Ether");
   }
}