class Solution {
    private var prev: Int?

    func isValidBST(_ root: TreeNode?) -> Bool {
        return inorder(root)
    }

    private func inorder(_ node: TreeNode?) -> Bool {
        guard let node = node else { return true }

        if !inorder(node.left) {
            return false
        }

        if let prev = prev, node.val <= prev {
            return false
        }

        prev = node.val

        return inorder(node.right)
    }
}