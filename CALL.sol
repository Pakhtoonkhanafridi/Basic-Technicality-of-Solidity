// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Receiver {
    //this is the contract in which we learn about . how to send ether
    // from one account to another , Or one wallet to another wallet
   event Received(address caller, uint amount, string message);
    
    fallback() external payable {
        emit Received(msg.sender, msg.value , "Fallback was called") ;

     }

     function foo(string memory _message, uint _x) public 
     payable returns (uint){
        emit Received(msg.sender, msg.value, _message);
        return  _x  + 1;

     }
}

contract Caller {
    event Response(bool sucess, bytes data);

    function testCallFoo(address payable _addr) public payable
    {
        // you can send ether and customze the  gas amount
        (bool success, bytes memory data) =_addr.call{value: msg.value, gas: 500}(
          abi.encodeWithSignature("foo(string, uint256)", "call foo", 123)
        );
        emit Response(success, data);
    }
   // Calling a function that does not exist triggers the fallback function
   function testCallDoesNotExist(address _addr) public payable{
    (bool success, bytes memory data) = _addr.call(
        abi.encodeWithSignature("doesNotExist()")
    );

    emit Response(success, data);
   }
}