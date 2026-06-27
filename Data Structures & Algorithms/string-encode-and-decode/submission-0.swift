class Solution {

     func encode(_ strs: [String]) -> String {
        var str = ""
        for i in 0..<strs.count {
            str.append(strs[i])
            str.append("🤪")
        }
        return str
    }
    
    func decode(_ s: String) -> [String] {
        var sChar = Array(s)
        var words = ""
        var result = [String]()
        for char in sChar {
            if char == "🤪" {
                result.append(words)
                words = ""
            } else {
                words.append("\(char)")
            }
        }
        return result
    }
}
