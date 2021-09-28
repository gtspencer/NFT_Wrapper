//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Base64.sol";

/**
TODO: Support object creation in gamespace
TODO: Support ERC1155
 */

abstract contract INFTWrapper {
    // address of NFT that will call TokenURI
    address nftAddress;

    enum Form {
        Visual,
        Audio
    }

    enum Function {
        Decor,
        Wear,
        Attack,
        Defend
    }

    /**
     * @dev Returns wrapped token info in game base64 json string
     * Default return is an image
     */
    function getTokenInfo() external view returns (string memory) {
        string[20] memory parts;
        string memory json = Base64.encode(bytes(string(abi.encodePacked(
            '{"name": "Default NFT", "description": "Default NFT description", "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '"}'))));
    }


}