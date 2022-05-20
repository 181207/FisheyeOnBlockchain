// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title FisheyeOnBlockchain
 * @dev Store & retrieve fish data in a map
 */
contract FisheyeOnBlockchain {
    //string storaga value;
    mapping(string => string) data;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    /**
     * @dev Store data
     * @param _id id to data
     * @param _jsonElement string data to store

     */
    function store(string memory _id,string memory _jsonElement) external {
        //Only the creater of the contract is allowed to store data.
        require(msg.sender == owner);
        data[_id]=_jsonElement;
    }

    /**
     * @dev Retrieve data
     * @param _id id to data
     * @return string of the data
     */
    function retrieve(string memory _id) external view returns (string memory) {
        return data[_id];
    }
}
