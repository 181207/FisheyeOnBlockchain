// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract fishData {
    //string storaga value;
    mapping(uint => string) data;
    uint256 number;

    /**
     * @dev Store data to mapping
     * @param _id id to data
     * @param _jsonElement string data to store

     */
    function store(uint256 _id,string memory _jsonElement) external {
        data[_id]=_jsonElement;
    }

    /**
     * @dev Return value 
     * @param _id id to data
     * @return value of 'number'
     */
    function retrieve(uint256 _id) public view returns (string memory) {
        //string output = Strings.toString(data[1]);
        //data[0]="hei";
        return data[_id];
    }
}