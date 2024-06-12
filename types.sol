// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26 ;

contract Type
{
    bool public boolenAge = false;
    int32 public int_var = -60313 ;
    string public str= "GreeksForGreeks ";
    bytes public b = "m";
    enum my_enum  { geeks_, _for ,_geeks }
    
    //Deffnning a function to return
    //Various stored in am enumenator
    
    function Enum() public pure returns(my_enum)
    {
        return my_enum._geeks;
    }


}