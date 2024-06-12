// SPDX-License-Ientifier: MIT
pragma solidity ^0.8.26;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

// An Array of 'Todo' structs
 Todo[] public  todos;

 function create(string calldata _text) public {
      // generally we have three ways to initialize a struct
      // - calling it like a fucntion
      todos.push(Todo(_text, false));

    //   //key value mapping
    //   todos.push(Todo({text: _text, completed: false}));

    //   //initialize an empty struct and the update it
    //    Todo memory todo;
    //    todo.text = _text;
    //    // todo.completed initialized to false

    //    todos.push(todo);

 }

  // Solidity aoutomatically created a getter for 'todos' so
  // you don't actually need this function.
  function get(uint _index) public view returns(string memory text, bool completed){
      Todo storage todo = todos[_index];
      return (todo.text, todo.completed);
  }

  //update text
  function updateText(uint _index, string calldata _text) public {
    Todo storage todo = todos[_index];
    todo.text = _text;
  }

  // update completed 
  function toggleCompleted(uint _index) public {
     Todo storage todo = todos[_index];
     todo.completed = !todo.completed;
  }


}