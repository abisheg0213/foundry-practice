// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.14;
import "forge-std/Script.sol";
import {Ourtoken} from "../src/Ourtoken.sol";
contract DeployToken is Script
{
function run() external returns(Ourtoken)
{
    vm.startBroadcast();
    uint initailsupply=100;
    Ourtoken simplestorage=new Ourtoken(initailsupply);
    vm.stopBroadcast();
    return simplestorage;
}
}