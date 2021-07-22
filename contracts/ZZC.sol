// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ZZC is ERC20, Ownable {
  constructor() ERC20("ZZCoin", "ZZC") {}

  function mint(address account, uint256 amount) external onlyOwner {
    super._mint(account, amount);
  }
}