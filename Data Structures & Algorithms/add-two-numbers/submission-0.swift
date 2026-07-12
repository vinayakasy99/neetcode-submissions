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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)  // Dummy node to simplify the result list
    var cur: ListNode? = dummy
    var carry = 0
    var p = l1, q = l2

    while p != nil || q != nil || carry > 0 {
        let v1 = p?.val ?? 0  // Get value from l1 or 0 if nil
        let v2 = q?.val ?? 0  // Get value from l2 or 0 if nil
        let sum = v1 + v2 + carry
        
        carry = sum / 10  // Compute carry for next digit
        let val = sum % 10  // Get the last digit of the sum
        
        cur?.next = ListNode(val)  // Create new node with the sum's last digit
        cur = cur?.next  // Move pointer forward
        
        // Move to the next nodes
        p = p?.next
        q = q?.next
    }

    return dummy.next  // Return the sum list
    }
}