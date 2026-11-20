class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var output = [Int](repeating: 1, count: n)
        var leftProduct = 1
        for i in 0..<n {
            output[i] = leftProduct
            leftProduct *= nums[i]
        }

        var rightProduct = 1
        for i in stride(from: n-1, through: 0, by: -1) {
            output[i] *= rightProduct
            rightProduct *= nums[i]
        }
        return output
    }
}
