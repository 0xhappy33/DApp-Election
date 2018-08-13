pragma solidity ^0.4.19;

/**
 * Created by Ha Truong
 * Created at August 13rd, 2018
 * The Election contract does this and that...
 */
contract Election {

	// Model a candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;		
	}
	
	// Store a candidate

	// Fetch candidate
	mapping (uint => Candidate) public candidates;
	
	// Store candidate count
	uint public candidatesCount;

	function Election () public{
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}	

	function addCandidate (string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
	

}

