//SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract SimpleMappingExample {

    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    mapping(uint => mapping(uint => bool)) public uIntUintBoolMapping;

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }

    function setuIntUintBoolMapping(uint _key1, uint _key2, bool _value) public {
        uIntUintBoolMapping[_key1][_key2] = _value;
    }
}
