class Solution {

    private var preorder = [Int]()
    private var inorderIndex = [Int: Int]()
    private var preorderIndex = 0

    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {

        self.preorder = preorder

        for (i, value) in inorder.enumerated() {
            inorderIndex[value] = i
        }

        return build(0, inorder.count - 1)
    }

    private func build(_ left: Int, _ right: Int) -> TreeNode? {

        if left > right {
            return nil
        }

        let rootValue = preorder[preorderIndex]
        preorderIndex += 1

        let root = TreeNode(rootValue)

        let mid = inorderIndex[rootValue]!

        root.left = build(left, mid - 1)
        root.right = build(mid + 1, right)

        return root
    }
}