pragma solidity ^0.8.0;

contract TodoList {
    uint taskCount = 0;
    mapping (uint => Task) public tasks;

    constructor() {
        addTask('Joined the Coolest kid club');

      }


    struct Task {
        uint id;
        string content;
        bool done;
    }


    function addTask (string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

   
    
}