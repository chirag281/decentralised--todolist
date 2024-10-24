// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract TodoList {
    struct Task {
        string content;
        bool completed;
        string ipfsHash; // To store IPFS hash
    }

    Task[] public tasks;

    function addTask(string memory _content, string memory _ipfsHash) public {
        tasks.push(Task(_content, false, _ipfsHash));
    }

    function completeTask(uint _index) public {
        tasks[_index].completed = true;
    }

    function removeTask(uint _index) public {
        delete tasks[_index];
    }

    function getTasks() public view returns (Task[] memory) {
        return tasks;
    }
}
