# NFT Wrapper
This aims to define the standard with which my untitled video game project will wrap any NFT to be able to work within the loose confines of a virtual world.

Current ERC721 standards lend well to the distribution of digital artifacts, but are limited in their use in a virtual world without a set of common distinguishing features.

This standard will allow anyone with minor solidity knowledge to bridge any NFT in to the virtual world and give it utility and/or function

Every token will be defined by a ***form*** (how it shows up) and ***function*** (what it does).  

Forms:
* 

Functions:
* Decor
* 

## Game Ideas:
* Let users define simple voxel shapes to show 

# NFT Wrapper JSON Standard (WIP)
```
{
    "NFT": {
        "name": "Loot",
        "description": "Friendly OpenSea Creature that enjoys long swims in the ocean.",

        // Form Descriptors
        "external_url": "www.lootproject.com", 
        "image": "https://image.com", // or svg
        "song": "https://song.com"
        "video": "https://video.com" // supports youtube and mp4
  
        // Optional - Actual categories from NFT, similar to OpenSea standard
        "NFT_Attributes": [
            {
            "trait_type": "Base", 
            "value": "Starfish"
            }, 
            {
            "trait_type": "Eyes", 
            "value": "Big"
            }, 
            {
            "trait_type": "Mouth", 
            "value": "Surprised"
            }
        ]
    }
}
```

### Deploy
```
// Run local
npx hardhat run scripts/deploy.js --network localhost
// Run on ropsten
npx hardhat run scripts/deploy.js --network ropsten
```
### Start Hardhat Node
```
npx hardhat node
```
### Compile
```
npx hardhat compile
```
