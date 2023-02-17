// Problem - https://leetcode.com/problems/single-number-iii/
// Runtime: 339 ms
// Memory Usage: 159.3 MB

class Solution {
  List<int> singleNumber(List<int> nums) {
    nums.sort();

    List<int> singleNumsList = [];

    for (int i = 0; i < nums.length; i++) {
      final previous = i - 1 >= 0 ? nums[i - 1] : null;
      final current = nums[i];
      final next = i + 1 < nums.length ? nums[i + 1] : null;

      if (previous != current && current != next) {
        singleNumsList.add(current);
      }
    }

    return singleNumsList;
  }
}
