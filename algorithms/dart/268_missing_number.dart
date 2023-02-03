// Problem - https://leetcode.com/problems/missing-number/
// Runtime: 334 ms
// Memory Usage: 160.8 MB

class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    if (nums.first != 0) return 0;
    for (int i = 0; i < nums.length; i++) {
        if (nums[i] != i) return i;
    }
    return nums.length;
  }
}