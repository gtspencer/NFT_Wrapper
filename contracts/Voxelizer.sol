//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Base64.sol";

contract Voxelizer {
    /**
    * Initial test will be 2x2x2
    * 
    *          ------
    *          | 0 1|
    *          | 2 3|
    *          ------
    *          ------
    *          | 4 5|
    *          | 6 7|
    *          ------
    *
     */ 
    function _defineVoxel(bool[8] memory points) internal pure returns(string memory) {
        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"voxel": "', points))));
        return json;
    }

    function getVoxel(
        bool p1,
        bool p2,
        bool p3,
        bool p4,
        bool p5,
        bool p6,
        bool p7,
        bool p8
    ) external pure returns(string memory) {
        bool[8] memory points = [p1, p2, p3, p4, p5, p6, p7, p8];
        return _defineVoxel(points);
    }
}