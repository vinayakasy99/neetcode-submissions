class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
 var rows = Array(repeating: Set<Character>(), count: 9)
        var cols = Array(repeating: Set<Character>(), count: 9)
        var squares = Array(repeating: Set<Character>(), count: 9)
        
        for r in 0..<9 {
            for c in 0..<9 {
                let value = board[r][c]
                if value == "." { continue }
                
                let squareIndex = (r / 3) * 3 + (c / 3)
                
                if rows[r].contains(value) || cols[c].contains(value) || squares[squareIndex].contains(value) {
                    return false
                }
                
                rows[r].insert(value)
                cols[c].insert(value)
                squares[squareIndex].insert(value)
            }
        }
        
        return true
    }
}
