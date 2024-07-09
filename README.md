# Currency Converter Smart Contract

This smart contract is designed to convert between Indian Rupees (INR), US Dollars (USD), and Kuwaiti Dinars (KWD). The conversion rates are hard-coded for simplicity. 

## Conversion Rates

- 1 USD = 75 INR
- 1 KWD = 250 INR

## Functions

### `rupeesToOther(int256 rupees)`

This function converts the given amount in Rupees (INR) to both USD and KWD.

#### Parameters

- `rupees` (int256): The amount in Rupees. Must be non-negative.

#### Returns

- `dollars` (int256): The equivalent amount in US Dollars.
- `dinars` (int256): The equivalent amount in Kuwaiti Dinars.

#### Example

```solidity
(int256 dollars, int256 dinars) = rupeesToOther(7500);
// dollars = 100
// dinars = 30
```

## ToRupees(int256 amount, string memory currency)
This function converts the given amount in either USD or KWD to Rupees (INR).

## Parameters
amount (int256): The amount in the specified currency. Must be non-negative.
currency (string): The currency type, either "USD" or "KWD".
## Returns
rupees (int256): The equivalent amount in Rupees.

## Error Handling
- require(): Used to validate inputs and conditions before executing the main logic. If the condition is not met, it reverts the transaction and provides an error message.
Example: require(rupees >= 0, "Invalid amount: Rupees cannot be negative");

- assert(): Used to check for conditions that should never be false. It is mainly used for internal errors and to check invariants. If the condition is false, it consumes all remaining gas and reverts the transaction.
Example: assert(dollars >= 0);

-revert(): Used to handle errors and provide a descriptive error message. It explicitly reverts the transaction.
Example: revert("Invalid currency: Supported currencies are USD and KWD");

# By incorporating these error handlers, this contract ensures that invalid inputs and conditions are properly managed, providing clear error messages and preserving the integrity of the contract.

## Usage
Deploy the contract on the Ethereum blockchain.
Use the provided functions to perform currency conversions.

## License
This project is licensed under the MIT License.


