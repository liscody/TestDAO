// SPDX-License-Identifier: MIT

// how many tokens holders hold in diferernt blocks
import "@openzeppelin/contracts/access/Ownable.sol";

pragma solidity 0.8.8;

contract Box is Ownable {
    uint256 private value;

    // Emited when the stored value changes
    event ValueChanged(uint256 newValue);

    //Stores a new value in the contract
    function store(uint256 newValue) public onlyOwner {
        value = newValue;

        emit ValueChanged(value);
    }

    // reasd the last stoerd value
    function retrieve() public view returns (uint256) {
        return value;
    }
}
