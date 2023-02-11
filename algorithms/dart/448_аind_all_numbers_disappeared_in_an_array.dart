// Problem - https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/description/
// Runtime: 333 ms
// Memory Usage: 177.6 MB

class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    Set<int> numsSet = {};

    for(int i = 1; i <= nums.length; i++) {
        numsSet.add(i);
    }

    for (int i=0; i<nums.length; i++) {
        numsSet.remove(nums[i]); 
    }

    return numsSet.toList();
  }
}