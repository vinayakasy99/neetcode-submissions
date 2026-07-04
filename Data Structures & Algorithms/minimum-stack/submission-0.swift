class MinStack {

    private var stack: [Int]
    private var minStack: [Int]

    init() {
        stack = []
        minStack = []
    }

    func push(_ val: Int) {
        stack.append(val)

        if let currentMin = minStack.last {
            minStack.append(min(currentMin, val))
        } else {
            minStack.append(val)
        }
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}