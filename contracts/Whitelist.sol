// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./interfaces/IVanaDataPermission.sol";

contract AddOnlyWhitelist is IVanaDataPermission {
    address public owner;
    mapping(address => bool) whitelistedNodes;

    event Added(uint amount, uint when);

    constructor() {
        owner = msg.sender;
    }

    function add(address node) external {
        require(
            msg.sender == owner,
            "Only compute node may change permissions"
        );
        whitelistedNodes[node] = true;
    }

    function remove(address node) external {
        require(
            msg.sender == owner,
            "Only compute node may change permissions"
        );
        whitelistedNodes[node] = false;
    }

    function authorized(address requesterNode) external view returns (bool) {
        return whitelistedNodes[requesterNode];
    }

    function authorized(
        address requesterNode,
        uint fileId
    ) external view returns (bool) {
        return whitelistedNodes[requesterNode];
    }
}