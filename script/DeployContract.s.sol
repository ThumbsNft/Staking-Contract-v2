// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import {Script} from "forge-std/Script.sol";
import {IStakingERC721} from "../src/IStakingERC721.sol";
import {StakingERC721} from "../src/StakingERC721.sol";

contract DeployStaking  is Script{
    function run() external returns (StakingERC721) {
        vm.startBroadcast();
        StakingERC721 staking = new StakingERC721(0x97E1953fBa8879E65dCEfdF87a5BFF527E06F2cd, 0xD992Af557Df5F6bc19eE115A6e59cd293e384A1b, 60, 0x4B96F9F8fe84577e65A17c666b76769a395d8273);

        vm.stopBroadcast();
        return staking;
    }
    
    // function run() external returns (IStakingERC721) {
    //     vm.startBroadcast();
    //     IStakingERC721 Istaking = new IStakingERC721();

    //     vm.stopBroadcast();
    //     return Istaking;
    // }
}