// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract fishData {
    //string storaga value;
    mapping(string => string) data;
    uint256 number;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    /**
     * @dev Store data to mapping
     * @param _id id to data
     * @param _jsonElement string data to store

     */
    function store(string memory _id,string memory _jsonElement) external {
        require(msg.sender == owner);
        data[_id]=_jsonElement;
    }

    /**
     * @dev Return value 
     * @param _id id to data
     * @return value of 'number'
     */
    function retrieve(string memory _id) public view returns (string memory) {
        return data[_id];
    }
}