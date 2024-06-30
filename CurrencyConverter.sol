// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
For this project, write a smart contract that implements the require(), assert() and revert() statements.
Contract successfully uses require()
Contract successfully uses assert()
Contract successfully uses revert() statements
*/

contract CurrencyConverter {

    // let's assume:
    // 1 USD = 75 INR   American Dollar
    // 1 KWD = 250 INR  Kuwaiti Dinar

    int256 constant USD_TO_INR = 75;
    int256 constant KWD_TO_INR = 250;

    function rupeesToOther(int256 rupees) public pure returns (int256, int256) {
        require(rupees >= 0, "Invalid amount: Rupees cannot be negative");

        // Conversion of Rupees to USD
        int256 dollars = rupees / USD_TO_INR;
        assert(dollars >= 0);

        // Conversion of Rupees to KWD
        int256 dinars = rupees / KWD_TO_INR;
        assert(dinars >= 0);

        return (dollars, dinars);
    }

    function otherToRupees(int256 amount, string memory currency) public pure returns (int256) {
        require(amount >= 0, "Invalid amount: Currency amount cannot be negative");

        if (keccak256(abi.encodePacked(currency)) == keccak256(abi.encodePacked("USD"))) {
            // Conversion of USD to Rupees
            int256 rupees = amount * USD_TO_INR;
            assert(rupees >= 0);
            return rupees;
        } else if (keccak256(abi.encodePacked(currency)) == keccak256(abi.encodePacked("KWD"))) {
            // Conversion of KWD to Rupees
            int256 rupees = amount * KWD_TO_INR;
            assert(rupees >= 0);
            return rupees;
        } else {
            revert("Invalid currency: Supported currencies are USD and KWD");
        }
    }
}
