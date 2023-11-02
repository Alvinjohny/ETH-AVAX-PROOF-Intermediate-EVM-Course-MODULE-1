# Metacrafters- ETH + AVAX PROOF: Intermediate EVM Course
## Description

This course teaches how to build decentralized applications (Dapps) on the Ethereum blockchain and Avalanche using the Solidity programming language.The course teaches how to create smart contracts, connect them to wallets, build a user interface, and deploy your Dapps.

## Getting Started
For this project, it is asked to write a smart contract that implements the require(), assert() and revert() statements. The prepared code is attached and the divided explanation is given below.
```javascript
pragma solidity ^0.8.0;

contract FunctionAndError {

    address public Address;
    uint public Amount;
    uint public AvailableBalance = 5000;

```
Here the contract is specified as FnctionAndError and the variables are declared. Specially note that the AvailableBalance is set to 5000 initially.
Next, 
```javascript
function setValue(address setAddress, uint setAmount) public {
        Amount = setAmount;
        Address = setAddress;
```
This part defines the area where the user is required/ expected to enter or input the value and the value enetered are stored into the variables Amount and Address.
```javascript
function withdraw() public { 
        require(msg.sender == Address, "Invaid address");  
        if (AvailableBalance < Amount) {
            revert ("Insufficient Balance");
        } else {
            AvailableBalance -= Amount;
```
Here the function moves to the withdrawal stage where the code is written in a manner where the input address and the real address should be same. Then only it proceeds. In the next line it is given to check an if condition where it checks whether the Available balance is less than the amount or not. If the condition is true then it will show "Insufficient balance" or else if it is the opposite
of the condition, then it will be moving on to the transacion where the Available balance will be shown the amount debited substracted from the balance.
```javascript
function performAssert() public view returns (bool){
        assert(AvailableBalance < Amount);
        return true;
```
Here it is given a boolean statement where it returns true if the available balance is less than the amount
## Authors
The author of this file is Alvin Johny
email id : alwynjohney17@gmail.com

