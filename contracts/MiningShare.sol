// SPDX-License-Identifier: MIT

pragma solidity ^0.7.0;

import "./SafeMath.sol"

contract MiningShare {
    using SafeMath for uint;

    address private _owner = 0x0;

    modifier onlyOwner {
        require(msg.sender == _owner);
        _;
    }

    constructor() public {
        _owner = msg.sender;
    }
}