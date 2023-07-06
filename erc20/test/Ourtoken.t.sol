// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.14;
import {Test} from "forge-std/Test.sol";
import {DeployToken} from "../script/DeployToken.s.sol";
import {Ourtoken} from "../src/Ourtoken.sol";
contract OurTokenTest is Test
{
    DeployToken public deploy;
    Ourtoken public ourtokeninst;
    address _bob=makeAddr("bob");
    address _alice=makeAddr("alice");
    uint _initailsupply=100;
    function setup() public
    {
        deploy=new DeployToken();
        ourtokeninst=deploy.run();
        vm.prank(msg.sender);
        ourtokeninst.transfer(_bob,_initailsupply );
    }
    function testBobbalance() public{
        assertEq(_initailsupply,ourtokeninst.balanceOf(_bob));
    }
}