class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
            var slow = nums[0]
    var fast = nums[0]

    // Phase 1: Finding the intersection point
    repeat {
        slow = nums[slow]
        fast = nums[nums[fast]]
    } while slow != fast

    // Phase 2: Finding the entrance to the cycle
    var slow2 = nums[0]
    while slow != slow2 {
        slow = nums[slow]
        slow2 = nums[slow2]
    }

    return slow
    }
}