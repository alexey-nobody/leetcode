// Problem - https://leetcode.com/problems/longest-common-prefix/
// Runtime: 257 ms (Beats 94.95%)
// Memory Usage: 140.7 MB (Beats 98.11%)

class Solution {
  String longestCommonPrefix(List<String> strs) {
      if (strs.isEmpty) return "";
      if (strs.length == 1) return strs[0];
      
      var prefix = "";

      for (int i = 0; i < strs[0].length; i++) {
          final letter = strs[0][i];
          for (int k = 1; k < strs.length; k++) {
            if (strs[k].length < i + 1) {
              return prefix;
            }
            if (strs[k][i] != letter) {
              return prefix;
            }
          }

          prefix += letter;
      };

      return prefix;
  }
}