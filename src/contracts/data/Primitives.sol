// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

library Structs {
    struct Appellation {
        string name;
        string slug;
    }
   
    struct KeyValue {
        string key;
        string value;
    }

    struct Context {
        address actor;
        mapping(string => string) configuration;
    }

    struct DataContainer {
        address actor;
        address client;

        mapping(string => mapping(uint => string[])) data;
    }
}