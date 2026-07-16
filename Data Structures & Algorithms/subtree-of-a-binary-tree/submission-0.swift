/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
// class Solution {
//      func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
//         if root == nil && subRoot == nil {
//             return true
//         }
//         if root == nil || subRoot == nil {
//             return false
//         }
//         if validate(root, subRoot) {
//             return true
//         }
//         return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
//     }
    
//     func validate(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
//         if root == nil && subRoot == nil {
//             return true
//         }
//         if root == nil || subRoot == nil {
//             return false
//         }
//         if root?.val != subRoot?.val {
//             return false
//         }
//         return validate(root?.left, subRoot?.left) && validate(root?.right, subRoot?.right)
//     }
// }

class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        guard let subRoot = subRoot else {
            return true
        }
        guard let root = root else {
            return false
        }

        if sameTree(root, subRoot) {
            return true
        }
        return isSubtree(root.left, subRoot) || isSubtree(root.right, subRoot)
    }

    private func sameTree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil && subRoot == nil {
            return true
        }
        if let root = root, let subRoot = subRoot, root.val == subRoot.val {
            return sameTree(root.left, subRoot.left) && sameTree(root.right, subRoot.right)
        }
        return false
    }
}
