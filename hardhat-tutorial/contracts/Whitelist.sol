//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhiteListedAddresses;
    uint8 public numAddressWhitelisted;
    mapping(address => bool) public whiteListedAddresses;


    constructor(uint8 _maxWhiteListedAddresses){
        maxWhiteListedAddresses = _maxWhiteListedAddresses;
    }

    function addAddressToWhiteList( ) public{
     require(!whiteListedAddresses[msg.sender],"Sender already in the whitelist");   
     require(numAddressWhitelisted < maxWhiteListedAddresses, "Max limit reached");
     whiteListedAddresses[msg.sender]=true;
     numAddressWhitelisted +=1;
    }




}