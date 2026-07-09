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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var n1: ListNode? = list1
        var n2: ListNode? = list2
        var dummyNode = ListNode(0)
        var currentNode: ListNode? = dummyNode

        while n1 != nil, n2 != nil {
            if (n1?.val ?? 0) <= (n2?.val ?? 0) {
                currentNode!.next = n1
                n1 = n1?.next
            } else {
                currentNode!.next = n2
                n2 = n2?.next
            }
            currentNode = currentNode!.next
        }
        
        if n1 != nil {
            currentNode!.next = n1
        } else {
            currentNode!.next = n2
        }

        return dummyNode.next
    }
}