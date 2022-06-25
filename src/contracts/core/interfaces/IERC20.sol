// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract IERC20 {
    uint8 decimals;
    string appellation;
    string symbol;

    function name() public view returns (memory string) {
        return appellation;
    }
}
