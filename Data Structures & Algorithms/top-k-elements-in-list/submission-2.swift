class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
            var valueDict = [Int: Int] ()
            for num in nums {
                valueDict [num, default:0] += 1
            }
            let sorted = valueDict.sorted { $0.value > $1.value }
            var result = [Int]()
            for i in 0..<k {
                result.append(sorted[i].key)
            }
            return result
    }
}
