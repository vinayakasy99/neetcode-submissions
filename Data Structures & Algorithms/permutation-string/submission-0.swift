class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {

        let s1 = Array(s1.utf8)
        let s2 = Array(s2.utf8)

        guard s1.count <= s2.count else { return false }

        var target = Array(repeating: 0, count: 26)
        var window = Array(repeating: 0, count: 26)

        for c in s1 {
            target[Int(c - 97)] += 1
        }

        for i in 0..<s2.count {

            window[Int(s2[i] - 97)] += 1

            if i >= s1.count {
                window[Int(s2[i - s1.count] - 97)] -= 1
            }

            if window == target {
                return true
            }
        }

        return false
    }
}