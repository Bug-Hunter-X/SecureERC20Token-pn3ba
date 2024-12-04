# Reentrancy Vulnerability in ERC20 Transfer Function

This repository demonstrates a common reentrancy vulnerability in ERC20 token transfer functions and its solution.  The vulnerable code allows a malicious contract to recursively call the transfer function before the balance is updated, leading to an underflow and potential theft of funds.  The solution demonstrates a safe implementation using the Checks-Effects-Interactions pattern.