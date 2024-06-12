// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//EVENT TICKET
contract EventTicket{

    uint256  numberOfTicket;
    uint256  ticketPrice;
    uint256  totalAmount;
    uint256  startAt;
    uint256 endAt;
    uint256  timeRange;
    string   message = "Buy you First Event Ticket";

    constructor(uint256 _ticketPrice){

        ticketPrice =_ticketPrice;
        endAt = block.timestamp + 7 days;
        timeRange = (endAt - startAt) /60 /60 /24;

    }

    function buyTicket(uint256 _value) public returns(uint256 ticketId)
    {
        numberOfTicket++;
        totalAmount += _value;
        ticketId = numberOfTicket;
    }

    function getAmount() public view returns(uint256)
    {
        return totalAmount;
    }

}