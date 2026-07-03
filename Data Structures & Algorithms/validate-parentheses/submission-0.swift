class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        
        // Map closing brackets to their corresponding opening brackets
        let mapping: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]
        
        for char in s {
            if mapping.values.contains(char) {
                // If it's an opening bracket, push to stack
                stack.append(char)
            } else if let expected = mapping[char] {
                // If it's a closing bracket, check stack
                if stack.isEmpty || stack.removeLast() != expected {
                    return false
                }
            }
        }
        
        // If stack is empty, all brackets matched correctly
        return stack.isEmpty
    }
}
