// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/governance/TimelockController.sol";

pragma solidity 0.8.8;

contract GovernanceTimeLock is TimelockController {
   constructor (
       uint256  minDelay,
       address[] memory proposer,
       address[] memory executors
   )
   TimelockController(minDelay, proposer, executors) {}
}