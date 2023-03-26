# zkEthBridge
Project for ETH Global Hackathon


### Token Transfer 

Tokens are spent on the sending chain and a new note is created on the receiving chain
The tokens involved are zkERC20 tokens following the proposed confidential token standard  [EIP-1724](https://github.com/ethereum/EIPs/issues/1724) 



![](https://imgur.com/3a9Yta4)

The process is carried out by an operator.

The operator will receive the note fron a note commitment tree on the sending chain and (if the authorisation is correct) will issue a nullifier on the sending chain and create a new note of equivalent value on the receiving chain.
The authorisation can be set up via a confidential approve function on the zkERC20. 


### Operator incentivisation

The operator is rewarded for mainiting the bridge by taking fees ( and perhaps MEV) 
, but they are required to supply a stake 
If they fail to transfer a token  their stake will be slashed.


