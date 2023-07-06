pragma solidity ^0.8.14;
import {ERC20} from "@openzeppelincontracts/token/ERC20/ERC20.sol";
contract Ourtoken is ERC20{
    constructor(uint initialSupply) ERC20("SEMTOKEN","SEM"){
        _mint(msg.sender, initialSupply);
    }
}