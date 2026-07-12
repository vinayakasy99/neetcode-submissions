
class LRUCache {
    class Node {
        var key: Int
        var value: Int
        var prev: Node?
        var next: Node?
        
        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }
   private var capacity: Int
    private var cache: [Int: Node] = [:]
    private var head: Node
    private var tail: Node

    init(_ capacity: Int) {
        self.capacity = capacity
        head = Node(0, 0) // Dummy head
        tail = Node(0, 0) // Dummy tail
        head.next = tail
        tail.prev = head
    }

    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            remove(node)
            insert(node)
            return node.value
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            remove(node)
        }

        let newNode = Node(key, value)
        cache[key] = newNode
        insert(newNode)

        if cache.count > capacity {
            if let lruNode = head.next {
                remove(lruNode)
                cache.removeValue(forKey: lruNode.key)
            }
        }
    }

    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    private func insert(_ node: Node) {
        node.next = tail
        node.prev = tail.prev
        tail.prev?.next = node
        tail.prev = node
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */