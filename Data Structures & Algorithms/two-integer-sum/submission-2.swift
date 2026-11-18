class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            var numMaps = [Int:Int]() // Key: value
            for (i,num) in nums.enumerated() {
                let diff = target - num
                if let index = numMaps[diff] {
                    return [index,i]
                }
                numMaps[num] = i
            }
            return []
    }
}
