class Solution {

    func copyRandomList(_ head: Node?) -> Node? {

        guard let head = head else {
            return nil
        }

        var map = [ObjectIdentifier: Node]()

        // Pass 1: Create all copied nodes
        var curr: Node? = head

        while let node = curr {
            map[ObjectIdentifier(node)] = Node(node.val)
            curr = node.next
        }

        // Pass 2: Connect next and random pointers
        curr = head

        while let node = curr {

            let copy = map[ObjectIdentifier(node)]!

            if let next = node.next {
                copy.next = map[ObjectIdentifier(next)]
            }

            if let random = node.random {
                copy.random = map[ObjectIdentifier(random)]
            }

            curr = node.next
        }

        return map[ObjectIdentifier(head)]
    }
}