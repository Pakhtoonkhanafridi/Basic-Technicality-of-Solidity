// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ArrayRemovedByShifting {
    // [1,2,3] --remove(1) --> [1,3,3] --> [1, 3]
    uint[] public  arr;

    function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for(uint i =_index; i < arr.length - 1; i++){
            arr[i] = arr[i + 1];

        }
        arr.pop();
    }

    function test() external {
        arr = [1,2,3,4,5];
        remove(1);
        // [1,2,4,5]
        assert(arr[0] == 1);
        assert(arr[0] == 2);
        assert(arr[0] == 4);
        assert(arr[0] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);


    }
}