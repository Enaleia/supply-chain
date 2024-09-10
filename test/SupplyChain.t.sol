// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BaseContract, SupplyChain} from "../src/SupplyChain.sol";

contract SupplyChainTest is BaseContract, Test {
    SupplyChain public supplyChain;

    function setUp() public {
        supplyChain = new SupplyChain();
    }

    function test_LogActionDetail() public {
        uint256 date = block.timestamp;
        string memory action_type = "fishing_for_litter";
        string memory waste_type = "plastic";
        uint256 waste_weight = 250;
        string memory port = unicode"ΚΑΒΑΛΑ";
        string memory country = "GR";
        string memory weight_logging_method = "E";

        // Expect the ActionDetail event to be emitted with the specified values
        vm.expectEmit(true, true, true, true);
        emit ActionDetail(date, action_type, waste_type, waste_weight, port, country, weight_logging_method);

        // Call the logActionDetail function
        supplyChain.logActionDetail(date, action_type, waste_type, waste_weight, port, country, weight_logging_method);
    }
}
