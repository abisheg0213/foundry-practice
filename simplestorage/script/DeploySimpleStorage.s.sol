// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.14;
import "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
contract DeploySimpleStorage is Script
{
function run() external returns(SimpleStorage)
{
    vm.startBroadcast();
    SimpleStorage simplestorage=new SimpleStorage();
    vm.stopBroadcast();
    return simplestorage;
}
}