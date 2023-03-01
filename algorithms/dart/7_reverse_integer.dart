// Problem - https://leetcode.com/problems/reverse-integer
// Runtime: 319 ms (Beats 94.64%)
// Memory Usage: 142.9 MB (Beats 100%)

class Solution {
  int reverse(int x) {
    int tempX = x.abs();
    int reversedNumber = 0;

    while (tempX != 0) {
      reversedNumber = (reversedNumber * 10) + (tempX % 10);
      tempX ~/= 10;
    }

    if (x < 0) {
      reversedNumber = -reversedNumber;
    }

    if (reversedNumber.toSigned(32) != reversedNumber) {
      return 0;
    }

    return reversedNumber;
  }
}
