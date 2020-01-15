# Smart-Contract
Smart Contract

# What is it?
A simple pet adoption center, where you can safely adopt a pet using Ethereum blockchain network.

# How to use it?
Clone the repo.

`npm install` to install dependencies.

`npm install -g truffle` to install [Truffle suite](https://www.trufflesuite.com/docs/truffle/getting-started/installation).

You will need [Ganache](https://www.trufflesuite.com/ganache) for test Blockchain network.
Open a new terminal in root and write `truffle migrate --reset` to migrate the smart contract to the blockchain network.

`npm run dev` to start up the server.

[Metamask](https://metamask.io/) is required to use the blockchain accounts to adopt the pets.

# How does it work?
This app uses Truffle to migrate Solidity Smart Contract to the server. Web3 is what links the UI components to the backend. Ganache client is used to create a local Ethereum blockchain test network. Metadata is responsible for linking Web3 and Blockchain together.
