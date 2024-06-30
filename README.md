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
- require Statements
Ensures the input amounts are non-negative.

- assert Statements
Ensures the conversion results are non-negative.

- revert Statement
Handles unsupported currencies

## Usage
Deploy the contract on the Ethereum blockchain.
Use the provided functions to perform currency conversions.

## License
This project is licensed under the MIT License.


