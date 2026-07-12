/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0)  // Dummy node to handle edge cases
    dummy.next = head
    var slow: ListNode? = dummy
    var fast: ListNode? = dummy

    // Move `fast` pointer `n+1` steps ahead
    for _ in 0...(n) {
        fast = fast?.next
    }

    // Move both pointers until `fast` reaches the end
    while fast != nil {
        slow = slow?.next
        fast = fast?.next
    }

    // Remove the nth node
    slow?.next = slow?.next?.next

    return dummy.next  // Return the modified list

    }
}