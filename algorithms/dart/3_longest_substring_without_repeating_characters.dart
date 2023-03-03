// Problem - https://leetcode.com/problems/longest-substring-without-repeating-characters
// Runtime: 296 ms (Beats 98.83%)
// Memory Usage: 143.1 MB (Beats 98.83%)

import 'dart:math';

class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.length == 0 || s.length == 1) return s.length;

    Map<String, int> mapWithLastPosition = {};

    int j = 0;
    int longestCount = 0;
    for (int i = 0; i < s.length; i++) {
      if (mapWithLastPosition.containsKey(s[i])) {
        j = max(j, mapWithLastPosition[s[i]]! + 1);
      }

      mapWithLastPosition[s[i]] = i;
      longestCount = max(longestCount, i - j + 1);
    }

    return longestCount;
  }
}
