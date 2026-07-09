class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
          var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next              // Move slow by 1 step
            fast = fast?.next?.next        // Move fast by 2 steps

            if slow === fast {             // If slow and fast meet, there's a cycle
                return true
            }
        }
         return false
    }
}