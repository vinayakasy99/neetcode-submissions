class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
    var l = 0, r = 1
    var maxP = 0

    while r < prices.count {
        if prices[l] < prices[r] {
            let profit = prices[r] - prices[l]
            maxP = max(maxP, profit)
        } else {
            l = r
        }
        r += 1
    }
    return maxP
    }

}
