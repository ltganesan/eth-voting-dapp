pragma solidity ^0.4.20;

contract Voting {

    struct Candidate {
        bytes32 name;
        uint numOfVotes;
    }
    uint numCandidates;
    // Think of this as a hash table, with the key as a uint and value of the struct Candidate
    mapping (uint => Candidate) candidates;

    function newCandidate(bytes32 name) public returns (uint candidateID) {
        // candidateID is the return variable
        candidateID = numCandidates++;
        // Create new Candidate Struct with name and saves it to storage.
        candidates[candidateID] = Candidate(name,0);
    }


}