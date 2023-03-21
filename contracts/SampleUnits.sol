//SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

contract SampleUnits {
    modifier betweenOneAndTwoEth() {
        // i.e. 1e18 = 1000000000000000000 (18 zeros)
        //require(msg.value > 1e18 && msg.value <= 2e18);
        // or... 
        require(msg.value > 1 ether && msg.value <= 2 ether);
        _;
    }

    uint runUntilTimestamp;
    uint startTimestamp;

    constructor(uint startInDays) {
        startTimestamp = block.timestamp + (startInDays * 24 * 60 * 60);
        runUntilTimestamp = startTimestamp + (7 * 24 * 60 * 60);
    }
}