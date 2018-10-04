pragma solidity ^0.4.24;

contract Election {
    //Constructor
    //Read & Store candidate
    //string public candidate; //state vaiable (without _ ): accessable inside a contract 
    
    //Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    //Store  Candidates
    //Fetch  Candidate
    mapping (uint => Candidate) public candidates;
    
    //Store  Candidates Count
    uint public candidatesCount;

    function Election () public {
        //candidate = "candidate1"; 
        addCandidate("Muddassir");
        addCandidate("Junaid");
    }

    function addCandidate (string _name) private { //_name is local variable therefore _ is there
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

}