pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// KaseiCoin inherits the ERC20, ERC20Detailed and ERC20Mintable contracts
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {

    // Constructor that defines the basics of your token
    constructor(string memory name, string memory symbol, uint initial_supply) 
    ERC20Detailed(name, symbol, 18) public {

        // Mint the initial supply
        _mint(msg.sender, initial_supply);
    }
}
