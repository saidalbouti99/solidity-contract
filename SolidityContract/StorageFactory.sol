// SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;


import "./SimpleStorage.Sol";
contract StorageFactory is SimpleStorage{

    SimpleStorage[]public simpleStorageArray;


    function createSimpleStorageContract() public{
        //create object simple storage contract
        SimpleStorage simpleStorage=new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    //interact with contract need contract address and abi
    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public{
        //address
        //abi
        SimpleStorage simpleStorage =SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return  SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrive();
       
    }

}