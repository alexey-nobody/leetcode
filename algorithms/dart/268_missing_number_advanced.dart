// Problem - https://leetcode.com/problems/missing-number/
// Runtime: 337 ms
// Memory Usage: 160.5 MB

class Solution {
  int missingNumber(List<int> nums) {
      return (nums.length * (nums.length + 1)) ~/ 2 - nums.reduce((a, b) => a + b);
  }
}
