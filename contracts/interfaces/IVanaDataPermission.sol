interface IVanaDataPermission {
    function authorized(address requesterNode) external view returns (bool);

    function authorized(
        address requesterNode,
        address file
    ) external view returns (bool);
}
