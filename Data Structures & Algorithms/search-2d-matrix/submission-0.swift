class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty, !matrix[0].isEmpty else {
        return false
    }
    
    let rows = matrix.count
    let cols = matrix[0].count
    
    var left = 0
    var right = rows * cols - 1
    
    while left <= right {
        let mid = left + (right - left) / 2
        let midValue = matrix[mid / cols][mid % cols] // Map 1D index to 2D
        
        if midValue == target {
            return true
        } else if midValue < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
    }
}