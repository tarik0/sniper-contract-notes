# Reverse Engineering a Sniper Contract.
Hey, I've seen this contract on BSCScan and wondered how it worked.
And this is my notes for the sniper. 

Owner: `0xa7cc7c1522f529320776d27d9340f534d3a73b7f`
Sniper: `0x851686b5db3c11e4bfc7fc9b92f66041bfae4665`

# 0x432d5802
- No transaction has made with this method.
- Gets a address parameter does that `unknownMap[addr(_param1)] = 1`.
- Looks not important.

# 0xf191414b
- This function might be called to set the token buy amount.
- The second parameter might be a bool to set swap path.

# 0xf6f33638
- This should get the owner's balance (?)
```js
call _owner with:
    value eth.balance(this.address) wei
    gas 2300 * is_zero(value) wei
```

# 0xc0af8385
- The first parameter could be the target token that contract will snipe.
- This contract has another path setting function that allows you to set the path length to 3.
- This contract sets the path to for ex. WETH -> DAI.
```js
addr(swapPath.WETH) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
...
addr(swapPath.targetTokenAddress) = _param1
```

# 0x744ebfb5
- This function also sets the swap path but this time it you can add one more token to the path.
- The path could be like: WETH -> DAI -> DOGE.
```js
addr(swapPath3Lenght.WETH) = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
...
addr(swapPath3Lenght.tokenAAddress) = _param1
...
addr(swapPath3Lenght.tokenBAddress) = _param2
```

# 0xfd0af329
- This is the main function that does the `swapExactETHForTokens` with the value of `eth.balance(this.address)`.
- The path might change due to the which function being called. (`0x744ebfb5`, `0xc0af8385`).

```js
call router.swapExactETHForTokens with:
    value eth.balance(this.address) wei
    gas gas_remaining wei
    args 0, uint32(stor7.amountTokenToBuy?), 128, __owner, block.timestamp + 3600, swapPath.length
```

# Summary
It looks like this contract doesn't have any special ability besides swapping.
I'm pretty sure that there is another program that monitors the sniped token events and use that contract to snipe tokens.

# Donations and Contact.
You can donate me in that wallet.

ETH/BSC: `0x9D3b16055aCcC713612a18aaBEFff9Db8163F9f5`

I'm interested in job offers, you can contact me using those addresses.

Discord: `cool guy#4125`
Telegram: `@HichigoR35`
