pragma solidity ^0.4.24;

contract Election {
    //Constructor
    //Read & Store candidate
    string public candidate; //state vaiable (without _ ): accessable inside a contract 
    function Election () public {
        candidate = "candidate1"; 
    }

}