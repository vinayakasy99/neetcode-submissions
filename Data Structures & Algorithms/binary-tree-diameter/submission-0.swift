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
class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0
        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else { return 0 }
            
            let left = dfs(node.left)
            let right = dfs(node.right)
            
            res = max(res, left + right)
            
            return 1 + max(left, right)
        }
        
        dfs(root)
        return res
    }
}