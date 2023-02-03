// Problem - https://leetcode.com/problems/contains-duplicate/
// Runtime: 377 ms
// Memory Usage: 202.9 MB

class Solution {
  bool containsDuplicate(List<int> nums) {
      final Set<int> numsSet = {};
      for (int num in nums) {
          if (numsSet.contains(num)) return true;
          numsSet.add(num);
      }
      return false;
  }
}