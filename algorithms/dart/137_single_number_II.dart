// Problem - https://leetcode.com/problems/single-number-ii/
// Runtime: 322 ms
// Memory Usage: 159.8 MB

class Solution {
  int singleNumber(List<int> nums) {
    nums.sort();

    int iterations = 1;

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] != nums[i + 1] && iterations == 1) {
        return nums[i];
      }

      iterations == 3 ? iterations = 1 : iterations++;
    }

    return nums.last;
  }
}
