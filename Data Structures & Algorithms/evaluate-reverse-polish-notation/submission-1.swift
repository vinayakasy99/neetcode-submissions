class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
       var stack = [Int]()

       for token in tokens {
            switch token {
                case "+":
                if let a = stack.popLast(), let b = stack.popLast() {
                stack.append(a+b)
                }
                case "-":
                if let a = stack.popLast(), let b = stack.popLast() {
                stack.append(b-a)
                }
                case "*":
                if let a = stack.popLast(), let b = stack.popLast() {
                stack.append(a*b)
                }
                case "/":
                if let a = stack.popLast(), let b = stack.popLast() {
                stack.append(b/a)
                }
                default:
                if let token = Int(token){
                    stack.append(token)
                }
        }
        }
        return stack.popLast() ?? 0
}
}