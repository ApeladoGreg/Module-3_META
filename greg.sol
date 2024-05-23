// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GREG is ERC20 {
    constructor() ERC20("apelado", "ETH") {
        _mint(msg.sender, 777);
    }

    // Mint functions allow users to create new tokens.
    function mint(uint256 amount) public {
        _mint(msg.sender, amount);
    }

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    // Burn functions allow users to destroy their tokens.
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function burn(address from, uint256 amount) public {
        _burn(from, amount);
    }

    // The caller can send tokens to a recipient address using the transfer function.
    // To complete the transfer, it makes use of the _transfer method that was inherited from ERC20.
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}
