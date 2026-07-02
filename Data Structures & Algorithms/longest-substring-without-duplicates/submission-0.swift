class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        let chars = Array(s)
        var count: [Character: Int] = [:]

        var left = 0
        var answer = 0

        for right in 0..<chars.count {

            count[chars[right], default: 0] += 1

            while count[chars[right]]! > 1 {
                count[chars[left]]! -= 1
                left += 1
            }

            answer = max(answer, right - left + 1)
        }

        return answer
    }
}