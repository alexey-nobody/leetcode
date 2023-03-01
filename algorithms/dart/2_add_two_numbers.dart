// Problem - https://leetcode.com/problems/add-two-numbers
// Runtime: 381 ms (Beats 91.56%)
// Memory Usage: 150.2 MB (Beats 100%)

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2, [int extra = 0]) {
    if (extra == 0 && l1 == null && l2 == null) return null;

    if (extra > 0 && l1 == null && l2 == null) {
      return ListNode(extra, null);
    } else {
      final sum = (l1?.val ?? 0) + (l2?.val ?? 0) + extra;
      return ListNode(sum % 10, addTwoNumbers(l1?.next, l2?.next, sum ~/ 10));
    }
  }
}
