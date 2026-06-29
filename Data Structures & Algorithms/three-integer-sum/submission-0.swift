class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
  var result = Set<[Int]>()
        let sortedNums = nums.sorted()
        
        for i in 0..<sortedNums.count {
            var left = i + 1
            var right = sortedNums.count - 1
            
            while left < right {
                let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]
                
                if sum == 0 {
                    result.insert([sortedNums[i], sortedNums[left], sortedNums[right]])
                    left += 1
                    right -= 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }
        
        return Array(result)
    }
}
