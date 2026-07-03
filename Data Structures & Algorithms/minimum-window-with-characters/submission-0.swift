class Solution {

    func minWindow(_ s: String, _ t: String) -> String {

        if t.count > s.count {
            return ""
        }

        let sChars = Array(s)

        var need: [Character: Int] = [:]
        var window: [Character: Int] = [:]

        for ch in t {
            need[ch, default: 0] += 1
        }

        var have = 0
        let required = need.count

        var left = 0

        var minLength = Int.max
        var start = 0

        for right in 0..<sChars.count {

            let ch = sChars[right]
            window[ch, default: 0] += 1

            if let count = need[ch],
               window[ch] == count {
                have += 1
            }

            while have == required {

                if right - left + 1 < minLength {
                    minLength = right - left + 1
                    start = left
                }

                let leftChar = sChars[left]
                window[leftChar]! -= 1

                if let count = need[leftChar],
                   window[leftChar]! < count {
                    have -= 1
                }

                left += 1
            }
        }

        if minLength == Int.max {
            return ""
        }

        return String(sChars[start..<start + minLength])
    }
}