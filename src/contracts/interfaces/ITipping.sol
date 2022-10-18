// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { AssetType } from "../enums/IDrissEnums.sol";

interface ITipping {
    function sendTo(
        address _recipient,
        string memory _message) external payable;

    function sendTokenTo(
        address _recipient,
        uint256 _amount,
        address _tokenContractAddr,
        string memory _message
    ) external payable;

    function withdraw() external;

    function withdrawToken(address _tokenContract) external;

    function addAdmin(address _adminAddress) external;

    function deleteAdmin(address _adminAddress) external;
}