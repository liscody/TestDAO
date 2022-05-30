// SPDX-License-Identifier: MIT

// how many tokens holders hold in diferernt blocks
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

pragma solidity 0.8.8;

contract Goverls is ERC20Votes {
    constructor()
        ERC20("GovernanceToken", "GT")
        ERC20Permit("GovernanceToken")
    {
        _mint(msg.sender, 1000 * 10**18);
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._afterTokenTransfer(from, to, amount);
    }
}
