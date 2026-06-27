class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
 var frequency: [Int: Int] = [:]
        for num in nums {
            frequency[num, default: 0] += 1
        }
        let sorted = frequency.sorted { $0.value > $1.value }
        var result: [Int] = []
        for i in 0..<k {
            result.append(sorted[i].key)
        }
        return result
    }
}
