// Problem - https://leetcode.com/problems/single-number/
// Runtime: 293 ms (Beats 96.35%)
// Memory Usage: 146.2 MB (Beats 94.16%)

class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;

    for (final singleNum in nums) {
      result ^= singleNum;
    }

    return result;
  }
}
