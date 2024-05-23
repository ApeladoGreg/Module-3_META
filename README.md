To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). Copy and paste the following code into the file:

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
