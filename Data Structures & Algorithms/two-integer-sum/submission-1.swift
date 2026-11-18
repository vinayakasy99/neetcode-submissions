class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var prevMap = [Int: Int]() // key: index
        for i in 0..<nums.count {
            let num = nums[i]
            let diff = target - num
            if let index = prevMap[diff] {
                return [index, i]
            }
            prevMap[num] = i
        }
        return []
    }
}
