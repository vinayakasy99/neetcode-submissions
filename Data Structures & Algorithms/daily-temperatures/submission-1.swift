class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []  // will store indices of temperatures

        for i in 0..<temperatures.count {
            while let last = stack.last, temperatures[i] > temperatures[last] {
                let index = stack.removeLast()
                result[index] = i - index
            }
            stack.append(i)
        }
        return result
    }
}