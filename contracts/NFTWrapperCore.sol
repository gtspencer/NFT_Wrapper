//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Ownable.sol";

/**
 * Core code that holds instances to NFT wrappers
 * User contracts can only be used for non-PvP interactions
 */
contract NFTWrapperCore is Ownable {
    // holds contracts submitted by regular users -- cannot be used in PvP parts of game
    address[] userCuratedContracts;
    // hold owner submitted by owner -- hopefully this will become governance supported
    address[] ownerCuratedContracts;

    /**
     * Contracts MUST extend from INFTWrapper
     * If not, contracts will be ignored in game.
     * We could filter out contracts here that aren't of the interface, but that would increase gas substantially
     */
    function AddUserContract(address contractAddress) external {
        if (isContract(contractAddress)) {
            userCuratedContracts.push(contractAddress);
        }
    }

    function AddOwnerContract(address contractAddress) external onlyOwner {
        if (isContract(contractAddress)) {
            ownerCuratedContracts.push(contractAddress);
        }
    }

    function GetUserContracts() external view returns(address[] memory) {
        return userCuratedContracts;
    }

    function GetOwnerContracts() external view returns(address[] memory) {
        return ownerCuratedContracts;
    }

    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}