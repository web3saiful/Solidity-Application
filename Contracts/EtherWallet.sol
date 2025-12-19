// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet{
    address payable public owner;
    
    constructor(){
        owner=payable (msg.sender);
    }
    receive() external payable { }

    function withdraw()external payable {
        require(owner==msg.sender,"Only owner can withdraw");
        payable(owner).transfer(address(this).balance);
    }
}