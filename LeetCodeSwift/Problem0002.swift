class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var newHead: ListNode? = nil
    var cur: ListNode? = nil
    var cur1 = l1
    var cur2 = l2
    var remainder = 0
    while cur1 != nil || cur2 != nil || remainder != 0 {
      let firstNum = cur1?.val ?? 0
      let secondNum = cur2?.val ?? 0
      var total = firstNum + secondNum + remainder
      if total >= 10 {
        total -= 10
        remainder = 1
      }
      else {
        remainder = 0
      }

      if newHead == nil {
        cur = ListNode(total)
        newHead = cur
      }
      else {
        cur!.next = ListNode(total)
        cur = cur!.next
      }
      cur1 = cur1?.next
      cur2 = cur2?.next
    }
    return newHead
  }
}