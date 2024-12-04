```solidity
function transfer(address to, uint amount) public {
  uint256 balance = balanceOf[msg.sender];
  require(balance >= amount, "Insufficient balance");
  balanceOf[msg.sender] = balance - amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```

This solution uses a local variable `balance` to store the sender's balance. The balance is updated before the receiving address's balance is updated. This prevents reentrancy attacks.