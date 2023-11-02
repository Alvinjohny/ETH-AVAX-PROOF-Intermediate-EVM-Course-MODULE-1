// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionAndError {

    address public Address;
    uint public Amount;
    uint public AvailableBalance = 5000;

    function setValue(address setAddress, uint setAmount) public {
        Amount = setAmount;
        Address = setAddress;
    }

    function withdraw() public { 
        require(msg.sender == Address, "Invaid address");  
        if (AvailableBalance < Amount) {
            revert ("Insufficient Balance");
        } else {
            AvailableBalance -= Amount;
        }
    }

    function performAssert() public view returns (bool){
        assert(AvailableBalance < Amount);
        return true;
    }
}
