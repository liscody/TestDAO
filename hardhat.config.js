require("@nomiclabs/hardhat-waffle");
//require("dotenv").config({path: "./.env"})

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(account.address);
  }
});
const INFURA_URL = "https://rinkeby.infura.io/v3/145233a525e543aba356407d01a10ea3";
PRIVATE_KEY = "";

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
  module.exports = {
  solidity: {
    version: "0.8.8",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
  networks: {
    rinkeby: {
      url: INFURA_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    },
    bsctestnet: {
      url: 'https://data-seed-prebsc-1-s1.binance.org:8545',
      accounts: [`0x${PRIVATE_KEY}`],
      // gasPrice: 500000000
    },
    bscmainnet: {
      url: 'https://bsc-dataseed.binance.org/',
      accounts: [`0x${PRIVATE_KEY}`],
      // gasPrice: 5000000000
    },
  },
};