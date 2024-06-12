// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Event {
    //Event declaration
    /// up tp 3 parameters can be indexed.
    // indexed parameters helps you filter the logs by the indexed parameters
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test()  public {
        emit Log(msg.sender, "Hello World !");
        emit Log(msg.sender, "hello EVM!");
        emit AnotherLog();
    }
      }