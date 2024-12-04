```solidity
function transfer(address to, uint amount) public {
  require(balanceOf[msg.sender] >= amount, "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  balanceOf[to] += amount;
  emit Transfer(msg.sender, to, amount);
}
```

This code has a reentrancy vulnerability.  A malicious contract could call `transfer` multiple times before `balanceOf[msg.sender] -= amount;` is executed completely, leading to an underflow and potential theft of funds.