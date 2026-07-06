class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
       var left = 1
    var right = piles.max()!
    var result = right
    
    while left <= right {
        let k = (left + right) / 2
        var hours = 0
        
        for pile in piles {
            hours += Int(ceil(Double(pile) / Double(k)))
        }
        
        if hours <= h {
            result = min(result, k)
            right = k - 1
        } else {
            left = k + 1
        }
    }
    
    return result 
    }
}