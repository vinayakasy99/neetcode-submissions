class Solution {
    func encode(_ strs: [String]) -> String {
         var parts: [String] = []
    parts.reserveCapacity(strs.count)
        for str in strs {
            parts.append("\(str.count)#\(str)")
        }
        return parts.joined()
    }

    func decode(_ str: String) -> [String] {
  let chars = Array(str)
        var result = [String]()
        var i = 0

        while i < chars.count {

            var j = i

            // Find the delimiter
            while chars[j] != "#" {
                j += 1
            }

            // Extract the length
            let lengthString = String(chars[i..<j])
            let length = Int(lengthString)!

            // Extract the actual string
            let start = j + 1
            let end = start + length

            let word = String(chars[start..<end])
            result.append(word)

            // Move to next encoded string
            i = end
        }
         return result
    }
    
}
