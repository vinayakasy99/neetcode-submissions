/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {

        guard let root = root else {
            return []
        }

        var result = [[Int]]()
        var queue = [TreeNode]()
        queue.append(root)

        var index = 0

        while index < queue.count {

            let levelSize = queue.count - index
            var level = [Int]()

            for _ in 0..<levelSize {

                let node = queue[index]
                index += 1

                level.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }

            result.append(level)
        }

        return result
    }
}
