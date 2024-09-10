// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract BaseContract {
    // Definition of the ActionDetail event.
    //
    // An example JSON that would be emitted:
    // {
    //     "date": 1696204800,
    //     "action_type": "fishing_for_litter",
    //     "waste_type": "plastic",
    //     "waste_weight": 250,
    //     "port": "ΚΑΒΑΛΑ",
    //     "country": "GR",
    //     "weight_logging_method": "E"
    // }

    event ActionDetail(
        uint256 date,
        string action_type,
        string waste_type,
        uint256 waste_weight,
        string port,
        string country,
        string weight_logging_method
    );
}

contract SupplyChain is BaseContract {
    // Function to emit the ActionDetail event
    function logActionDetail(
        uint256 date,
        string memory action_type,
        string memory waste_type,
        uint256 waste_weight,
        string memory port,
        string memory country,
        string memory weight_logging_method
    ) public {
        emit ActionDetail(date, action_type, waste_type, waste_weight, port, country, weight_logging_method);
    }
}
