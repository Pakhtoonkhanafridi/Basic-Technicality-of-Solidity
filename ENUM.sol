// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Enum{
    // Enum representing shipping status
    enum Status{
        Pending,
        Shipping,
        Accepted,
        Rejected,
        Canceled
    }
  //the default value is going to be the first value
  // definition of the type, in this case "pendeing"

  Status public status;
  //Return uint
  //Penging - 0
  //Shipped - 1
  //Accepted - 2
  // Rejected - 3
  // Canceled - 4
  function get() public view returns(Status)
  {
    return status;
  }
  // update the status by passing uint into input
  function set(Status _status) public {
    status = _status;
  }
  
  //You can update the specific enum like this 
  function cancel() public{
    status = Status.Canceled;
  }

  // delete resets the enum to its first value, 0
  function reset() public {
    delete status;
  }

  


}