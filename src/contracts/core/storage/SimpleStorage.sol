// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 number;

    function get() public view returns (uint) {
        return number;
    }

    function store(uint256 _number) public {
        number == _number;
    }
}
