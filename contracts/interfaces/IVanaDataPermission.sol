// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IVanaDataPermission {
    function authorized(address requesterNode) external view returns (bool);

    function authorized(
        address requesterNode,
        uint fileId
    ) external view returns (bool);

    function owner() external view returns (address);
}
