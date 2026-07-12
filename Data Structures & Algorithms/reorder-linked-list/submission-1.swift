class Solution {
    func reorderList(_ head: ListNode?) {

        guard head != nil, head?.next != nil else {
            return
        }

        // Step 1: Find middle
        var slow = head
        var fast = head

        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // Step 2: Reverse second half
        var prev: ListNode? = nil
        var curr = slow?.next
        slow?.next = nil

        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }

        // Step 3: Merge
        var first = head
        var second = prev

        while second != nil {

            let temp1 = first?.next
            let temp2 = second?.next

            first?.next = second
            second?.next = temp1

            first = temp1
            second = temp2
        }
    }
}