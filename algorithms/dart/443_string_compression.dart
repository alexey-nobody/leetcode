// Problem - https://leetcode.com/problems/string-compression
// Runtime: 313 ms (Beats 83.33%)
// Memory Usage: 143.2 MB (Beats 83.33%)

class Solution {
  int compress(List<String> chars) {
    for (int i = 0; i < chars.length; i++) {
      int startElementIndex = i;
      int groupLength = 1;

      final elementForCounting = chars[startElementIndex];
      while (groupLength + i < chars.length &&
          chars[groupLength + i] == elementForCounting) {
        groupLength++;
      }

      if (groupLength > 1) {
        int removeRangeStartIndex = startElementIndex + 1;
        chars.removeRange(
            removeRangeStartIndex, startElementIndex + groupLength);

        final groupLengthList = groupLength.toString().split('');
        chars.insertAll(removeRangeStartIndex, groupLengthList);
        i = startElementIndex + groupLengthList.length;
      }
    }

    return chars.length;
  }
}
