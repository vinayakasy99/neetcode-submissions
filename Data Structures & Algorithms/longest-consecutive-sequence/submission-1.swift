class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    
    let numSet = Set(nums)
    var longest = 0
    
    for num in numSet {
        if !numSet.contains(num - 1) {
            var currentNum = num
            var length = 1
            
            while numSet.contains(currentNum + 1) {
                currentNum += 1
                length += 1
            }
            
            longest = max(longest, length) 
        }
    }
    return longest
    }
}
