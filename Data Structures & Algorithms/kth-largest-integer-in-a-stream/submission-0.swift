
class KthLargest {

    var minHeap = [Int]()
    var k = 0

    init(_ k: Int, _ nums: [Int]) {
        self.k = k
        for num in nums {
            add(num)
        }
    }
    
    func add(_ val: Int) -> Int {
       if minHeap.count < k || minHeap.first! < val {
        minHeap.append(val)
        minHeap.sort()
        if minHeap.count > k {
            minHeap.removeFirst()
        }
       }
       return minHeap.first!
    }
}

/**
 * Your KthLargest object will be instantiated and called as such:
 * let obj = KthLargest(k, nums)
 * let ret_1: Int = obj.add(val)
 */