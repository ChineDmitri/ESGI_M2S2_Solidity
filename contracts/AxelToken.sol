// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

pragma solidity ^0.8.24;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FunToken is ERC20 {

    uint256 constant initialSupply = 1000000 * (10**18);

    constructor() ERC20("AxelToken", "AXL") {
        _mint(msg.sender, initialSupply);
    }
}