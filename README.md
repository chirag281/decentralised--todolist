# Decentralized To-Do List DApp

This is a decentralized To-Do List DApp built on the Ethereum blockchain and IPFS. It allows users to manage tasks in a decentralized manner by uploading task details to IPFS and storing the task's metadata on the Ethereum blockchain.

## Features

- Add new tasks, with descriptions stored on IPFS.
- View the list of tasks, including their blockchain-stored IPFS hash and completion status.
- Mark tasks as completed (future feature).
- User-friendly interface built with React.

## Technologies

- Ethereum Smart Contract: Solidity
- IPFS: Decentralized storage for task descriptions
- React.js: Frontend interface
- Ethers.js: Ethereum JavaScript library for interaction with the contract
- Infura: IPFS node and Ethereum gateway provider

## Prerequisites

Before running this project, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (version 14.x or later)
- [npm](https://www.npmjs.com/)
- [MetaMask](https://metamask.io/) or any other Ethereum wallet
- [Infura IPFS API](https://infura.io/product/ipfs)  or [Pinata IPFS API](https://app.pinata.cloud/developers/api-keys) (used to interact with IPFS)
- [Ganache](https://www.trufflesuite.com/ganache) or [Sepolia (from Infura)](https://app.infura.io) an Ethereum test network (e.g., Rinkeby) for testing smart contracts

## Installation

1. Clone the repository:
    
Bash

    git clone https://https://github.com/chirag281/decentralised--todolist/
    cd decentralised--todolist
    

2. Install dependencies:
    
Bash

    npm install --legacy-peer-deps
    

3. Configure Infura:
    Open the hardhat.config.js file and replace the placeholder for Infura credentials with your Infura Project ID and Account Private Key:

    
JavaScript

    const projectId = 'yourProjectId';  // Replace with your Infura Project ID
    const projectSecret = 'accountprivatekey';  // Replace with your Metamask account private key
    
4. Use Hardhat:
    To compile the smart contract
    
Bash

    npx hardhat compile
    
    To test the dependencies and environment
    
Bash

    npx hardhat run test.js 
    
    To test the network setup
    
Bash

    npx hardhat run testnetwork.js --network sepolia
    
    To deploy the smart contract onto test network sepolia
    
Bash

    npx hardhat run scripts/deploy.js --network sepolia
    
    Add the deployed smart contract address in  scripts/interact.js to interact with the smart contract and run this command
    
Bash

    npx hardhat run scripts/interact.js --network sepolia
    
    Once deployed, update the CONTRACT_ADDRESS in App.js with your contract's deployed address.

5. Set up IPFS API
    Visit Infura or Pinata to create a new API and update the pinata.js with API Key and Secret Key.
    


    
Bash

    npm start
    

    This will start the React development server, and you can interact with the dApp at http://localhost:3000.

## Project Structure
```bash
├── contracts
│   └── TodoList.sol         # Solidity smart contract for the to-do list
├── frontend
    ├── public
    ├── src
    │   ├── components
    │   │   └── TodoList.js      # Main React component
    │   ├── contracts
    │   │   └── TodoList.json    # ABI of the deployed smart contract
    │   ├── App.css              #to style the project
    │   ├── pinata.js            # Pinata API integration code
    │   ├── App.js               # Main App component
    │   ├── index.js             # Entry point for the React app
    │   ├── TodoList.css         # CSS for the UI
    │   └── ...                  # Other files
    ├── scripts
    │   └── deploy.js            # Script to deploy the smart contract
    ├── .env                     # Environment variables (Pinata API keys)
    ├── package.json
    └── README.md
```
## Usage
Open the app in your browser at http://localhost:3000/.

Connect your Ethereum wallet using the Connect Wallet button (ensure you're on the same network as the smart contract deployment).

Add tasks to the list. Task descriptions are uploaded to IPFS, and their hashes are stored on the blockchain.

View the tasks in the list. You can mark tasks as complete or delete them.

## Smart Contract
The smart contract for the To-Do List is deployed on the Ethereum network and interacts with IPFS to store task details in a decentralized manner.

Main Functions:
addTask(string ipfsHash): Adds a task to the list by storing its IPFS hash on the blockchain.

getTasks(): Fetches all tasks from the blockchain.

completeTask(uint taskId): Marks a task as completed.

removeTask(uint taskId): Deletes a task.
## IPFS Integration
Tasks are uploaded to IPFS using the ipfs-http-client library, and only the resulting hash (CID) is stored on the Ethereum blockchain. This ensures that task data is decentralized and not stored on any single server.

To configure IPFS, we use Infura/Pinata as an IPFS provider. The credentials (projectId and projectSecret) are used to authenticate with same.

## IPFS Issues
If you're getting a 400 error when uploading to IPFS, ensure that:

You have the correct projectId and projectSecret from Infura/Pinata.
The IPFS daemon is running if using a local IPFS node.

You're using a valid Content Identifier (CID) when accessing files via IPFS.
## Ethereum Network Issues
Ensure you're connected to the correct Ethereum network (e.g., Sepolia or a local Ganache instance).

Ensure that MetaMask or the chosen wallet has enough test ETH for transactions. Use [Sepolia Faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia) for sepolia testnet.
## Future Improvements
- Enable task categorization and prioritization.

- Add user authentication using ENS (Ethereum Name Service).

- Implement notifications for completed tasks.
nodejs.org
Node.js — Run JavaScript Everywhere

Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine.

