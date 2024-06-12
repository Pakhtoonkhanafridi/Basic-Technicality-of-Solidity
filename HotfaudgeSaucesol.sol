// SPDX-License-Identifier: MIT
contract HotFudgeSauce
{
    uint public qtyCups;
    //Get the Current Hot Fudge Quantity
    function get() public view returns (uint)
    {
       return qtyCups;
    }
}