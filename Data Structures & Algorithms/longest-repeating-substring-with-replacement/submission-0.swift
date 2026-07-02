class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {

        let chars = Array(s)
        var freq: [Character: Int] = [:]

        var left = 0
        var maxFreq = 0
        var answer = 0

        for right in 0..<chars.count {

            freq[chars[right], default: 0] += 1
            maxFreq = max(maxFreq, freq[chars[right]]!)

            while (right - left + 1) - maxFreq > k {
                freq[chars[left]]! -= 1
                left += 1
            }

            answer = max(answer, right - left + 1)
        }

        return answer
    }
}