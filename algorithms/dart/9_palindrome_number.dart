// Problem - https://leetcode.com/problems/palindrome-number
// Runtime: 538 ms (Beats 90.56%)
// Memory Usage: 155.4 MB (Beats 93.99%)

class Solution {
  bool isPalindrome(int x) {
    if (x < 0) return false;

    int reversedNumber = 0;
    int numForReverse = x;

    while (numForReverse != 0) {
      reversedNumber = (reversedNumber * 10) + (numForReverse % 10);
      numForReverse ~/= 10;
    }

    return reversedNumber == x;
  }
}
