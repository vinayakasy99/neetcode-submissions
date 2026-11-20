class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count

        var left = [Int](repeating: 1, count: n)
        var right = [Int](repeating: 1, count: n)
        var output = [Int](repeating: 1, count: n)

        // Build left products.
        // left[i] contains the product of nums[0..<i].
        for i in 1..<n {
            left[i] = left[i - 1] * nums[i - 1]
        }

        // Build right products.
        // right[i] contains the product of nums[(i + 1)..<n].
        for i in stride(from: n - 2, through: 0, by: -1) {
            right[i] = right[i + 1] * nums[i + 1]
        }

        // Combine left and right products.
        for i in 0..<n {
            output[i] = left[i] * right[i]
        }

        return output
    }
    }

