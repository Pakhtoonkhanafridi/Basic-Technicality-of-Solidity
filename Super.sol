// SPDX-License-dentifier: MIT
pragma solidity 0.8.26;
/* 
             inheritance tree
             A
           /   \
          B      C
           \   /
             D
*/
contract A {
    //This is called an event. You can emits from your function
    // and they are logged into the transaction log.
    // In our case, this will be usefull for tracing fucntion calls.
    event Log(string message);
    function foo() public virtual {
        emit Log("A.foo called");
    }
    function bar() public virtual {
        emit Log("A.bar called");
    }
}
contract B is A {
    function foo() public virtual override{
        emit Log("B .foo called");
        A.foo();
    }

    function bar () public virtual override {
        emit Log("b.bar called");
        super.bar();
    }
}

  contract C is  A {
     function foo() public virtual override{
        emit Log("C.foo called");
        A.foo();
     }

     function bar() public virtual override {
         emit Log ("C.bar called");
         super.bar();

     }
  }

  contract D is B, C {
    //Try :
    // Call D.foo and check the transaction logs .
    // Athough D inheritance A , B and C , its only called C and then A.
    //- Call D.bar and check the transaction logs
    // D called C, then B and finally A.
    //Athough super was called twice (by B and C) it only called A once.
    function foo () public override(B,C) {
        super.foo();
    }

    function bar()  public override(B,C) {
        super.bar();
    }
  }