require("@nomiclabs/hardhat-waffle");

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.8.4",
  paths: {
    artifacts: './src/artifacts',
  },
  networks: {
    hardhat: {
      chainId: 1337
    }
    /** 
    mainnet: {
      url: "https://mainnet.infura.io/v3/9e4c4b48907f4beba4ca0f3cc9d50ea2",
      accounts: ["nada"]
    },
    ropsten: {
      url: "https://ropsten.infura.io/v3/9e4c4b48907f4beba4ca0f3cc9d50ea2",
      accounts: ["nada"]
    },
    rinkeby: {
      url: "https://rinkeby.infura.io/v3/9e4c4b48907f4beba4ca0f3cc9d50ea2",
      accounts: ["nada"]
    }
    */
  }
};
