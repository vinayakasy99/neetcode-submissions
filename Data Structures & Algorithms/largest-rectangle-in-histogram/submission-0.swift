
class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int { 
        var stack: [Int] = [] // Stack to store indices
    var maxArea = 0 // Variable to store the maximum area
    let n = heights.count
    
    for i in 0...n {
        // Get the height of the current bar or 0 if we've reached the end
        let currentHeight = (i < n) ? heights[i] : 0
        
        while let top = stack.last, currentHeight < heights[top] {
            // Pop the top of the stack
            let height = heights[stack.removeLast()]
            // Calculate the width
            let width = stack.isEmpty ? i : i - stack.last! - 1
            // Calculate the area and update maxArea
            maxArea = max(maxArea, height * width)
        }
        
        // Push the current index onto the stack
        stack.append(i)
    }
    
    return maxArea
    }
}