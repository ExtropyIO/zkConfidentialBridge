// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;


import "./zkERC20.sol";
abstract contract Simple is zkERC20 {

    //  event CreateConfidentialNote(address indexed _owner, bytes _metadata);
    // event DestroyConfidentialNote(address indexed _owner, bytes32 _noteHash);

    address immutable Engine;

    uint256 totalSupply;
    mapping(address=>mapping(bytes32=>bool)) approvals;


    constructor(address _engine){
        Engine = _engine;
    }

    function cryptographyEngine() external view returns (address){
        return Engine;
    }
    function confidentialTotalSupply() external view returns (uint256){
        return totalSupply;
    }

    function confidentialIsApproved(address _spender, bytes32 _noteHash) external view returns (bool){
        return approvals[_spender][_noteHash];
    }
 
    function confidentialTransfer(bytes calldata _proofData) public{
        _transfer(msg.sender,_proofData);

    }


    function confidentialTransferFrom(uint16 _proofId, bytes calldata _proofOutput) public{
        
        // check for approval
        // then call transfer



    }
    function _transfer(address _from,bytes calldata _proofData) internal{

     // create new note and add to note tree
     // create nullifier for old note and add to nullifier set

    }

}
