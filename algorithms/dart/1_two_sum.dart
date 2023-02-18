// Problem - https://leetcode.com/problems/two-sum/
// Runtime: 399 ms (Beats 71.47%)
// Memory Usage: 157.7 MB (Beats 60.68%)

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int c = 0; c < nums.length; c++) {
      for (int n = c + 1; n < nums.length; n++) {
        if (nums[c] + nums[n] == target) {
          return [c, n];
        }
      }
    }

    throw Exception('No solution');
  }
}
