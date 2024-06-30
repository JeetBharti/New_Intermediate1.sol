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
