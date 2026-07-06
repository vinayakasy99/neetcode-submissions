class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var res = nums[0]

        while left <= right {
            if nums[left] < nums[right]{
                res = min(res, nums[left])
                break
            }
            var mid = (left + right) / 2
            res = min(res, nums[mid])
            if nums[mid] >= nums[left] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        return res
    }
}