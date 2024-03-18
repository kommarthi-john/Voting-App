
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

///by john

 contract VotingSystem {
    string[5] public candidates;
    mapping (string => uint256) private candidateVotes;
    event  VoteCast(string candidate, uint256 newVoteCount);

    constructor() {
        candidates[0]="john";
        candidates[1]="jr";
        candidates[2]="Cr";
        candidates[3]="sai";
        candidates[4]="rog";
    }
    function vote(uint8 candidateIndex) public {
        require(candidateIndex < 5,"invalid candidate index");
        string memory selectedCandidate =candidates[candidateIndex];
        candidateVotes[selectedCandidate]++;
        emit VoteCast(selectedCandidate,candidateVotes[selectedCandidate]);

    }
    function getVotes(string memory candidate) public view returns (uint256) {
        return candidateVotes[candidate];
    }
    function getCandidateNames() public view returns (string [5] memory){
        return candidates;
    }
 
 }
    


 
 