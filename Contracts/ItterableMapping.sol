// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleIterableMap {
    // Store value for each user
    mapping(address => uint256) public userValue;

    // Store list of all users (to allow iteration)
    address[] public users;

    // Track if a user has already added a value (to prevent duplicate entries in users array)
    mapping(address => bool) public hasAdded;
    // 🔹 Add or update a value for the caller
    function addOrUpdate(uint256 value) public {
        // Save the value for msg.senderx
        userValue[msg.sender] = value;

        // If this is the first time msg.sender is adding, push to users list
        if (!hasAdded[msg.sender]) {
            users.push(msg.sender);
            hasAdded[msg.sender] = true;
        }
    }






 
}