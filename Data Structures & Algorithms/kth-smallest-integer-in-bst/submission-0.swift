class Solution {

    private var count = 0
    private var answer = 0

    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {

        inorder(root, k)

        return answer
    }

    private func inorder(_ node: TreeNode?, _ k: Int) {

        guard let node = node else {
            return
        }

        // Left
        inorder(node.left, k)

        // Root
        count += 1

        if count == k {
            answer = node.val
            return
        }

        // Right
        inorder(node.right, k)
    }
}