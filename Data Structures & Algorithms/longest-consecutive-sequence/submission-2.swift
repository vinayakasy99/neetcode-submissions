class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longest = 0
        
        for num in numSet {
            // Only start counting if this is the
            // beginning of a consecutive sequence.
            if !numSet.contains(num - 1) {
                var length = 1
                var current = num
                
                while numSet.contains(current + 1) {
                    current += 1
                    length += 1
                }
                
                longest = max(longest, length)
            }
        }
        
        return longest
    }
}