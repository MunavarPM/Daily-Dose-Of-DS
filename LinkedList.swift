
class Node {
    var data: Int
    var next: Node?
    
    init(data: Int, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkedList {
    private var head: Node?
    
    func addFront(_ data:Int){
        var newNode = Node(data: data)
        newNode.next = head
        head = newNode
    }
    
    func getFirst() -> Int? {
        if head == nil {
            print("Node is Empty")
            return nil
        }
        return head!.data
    }
    
    func getLast() -> Int? {
        if head == nil {
            print("Node is Empty")
            return nil
        }
        var HeadNode = head
        while HeadNode?.next != nil {
            HeadNode = HeadNode?.next
        }
        return HeadNode!.data
    }
    
    func addBack(_ data: Int) {
        var newNode = Node(data: data)
        var headNode = head
        while headNode?.next != nil {
            headNode = headNode?.next
        }
        headNode?.next = newNode
    }
    
    func insert(_ data: Int, _ position: Int) {
        if position == 0 {
            addBack(data)
            return
        }
        let newNode = Node(data: data)
        var currentNode = head
        for _ in 0..<position - 1 {
            currentNode = currentNode?.next
        }
        newNode.next = currentNode?.next
        currentNode?.next = newNode
    }
    
    func delectFront(){
        if head == nil {
            print("Node is Empty")
            return
        }
        head = head?.next
    }
    
    func delectLast(){
    var nextNode = head
    var previousNode: Node?
        while nextNode?.next != nil {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nil
    }
    
    func delectPosition(position: Int) {
        if position == 0 {
            self.delectFront()
        }
        var nextNode = head
        var previousNode: Node?
        
        for i in 0..<position {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nextNode?.next
    }
    
    func legnthList() -> Int {
        var count = 0
        var current = head
        
        while current != nil {
           count += 1
            current = current?.next
        }
        return count
    }
    
    func printLikedList() {
        if head == nil {
            print("Node is Empty")
            return
        }
        var result = [Int]()
        var Headnode = head
        result.append(Headnode!.data)
        while Headnode?.next != nil {
            result.append(Headnode!.next!.data)
            Headnode = Headnode?.next
        }
        print(result)
    }
}
let linkedlist = LinkedList()
linkedlist.addFront(3)
linkedlist.addFront(2)
linkedlist.addFront(1)
linkedlist.printLikedList()
linkedlist.addFront(4)
linkedlist.getFirst()
linkedlist.getLast()
linkedlist.addBack(100)
linkedlist.insert(5, 3)
linkedlist.delectFront()
linkedlist.delectLast()
linkedlist.delectPosition(position: 1)
linkedlist.legnthList()
linkedlist.printLikedList()
