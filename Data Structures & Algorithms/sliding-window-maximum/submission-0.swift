class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
               var result = [Int]() // To store the maximums
        var deque = [Int]()  // To store indices of elements in the current window
        
        for i in 0..<nums.count {
            // Remove indices that are out of the current window
            if !deque.isEmpty && deque.first! < i - k + 1 {
                deque.removeFirst()
            }
            
            // Remove indices of elements smaller than the current element
            // as they cannot be the maximum for any future window
            while !deque.isEmpty && nums[deque.last!] < nums[i] {
                deque.removeLast()
            }
            
            // Add the current element's index to the deque
            deque.append(i)
            
            // Add the maximum of the current window to the result
            // Start adding results only after the first window is fully formed
            if i >= k - 1 {
                result.append(nums[deque.first!])
            }
        }
        
        return result
    }
}