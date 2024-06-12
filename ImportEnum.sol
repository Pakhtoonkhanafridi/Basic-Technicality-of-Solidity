// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
//This is save the 'EnumDeclaration.sol'

contract EnumDeclaration{
enum Status {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Cancel

}
}



import "./EnumDeclaration.sol";

contract Enum {
    EnumDeclaration.Status public status;

    function set(EnumDeclaration.Status _status) public {
        status = _status;

    }

    function getStatus() public view returns(EnumDeclaration.status) {
          return status;
    }

}
