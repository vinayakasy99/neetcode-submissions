class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var counts = [Character: Int] ()
        for c in s {
            counts[c, default: 0] += 1
        }
        for c in t {
            counts[c, default: 0] -= 1
        }
        return counts.values.allSatisfy { $0 == 0 }
    }
}
