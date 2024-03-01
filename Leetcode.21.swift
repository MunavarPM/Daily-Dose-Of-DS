class ListNode {
    init(val: Int, next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
    var val: Int
    var next: ListNode?
}
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        let dummyNode = ListNode(val: 0)
        var currentNode: ListNode? = dummyNode
        
        var currentList1 = list1
        var currentList2 = list2
        
        while let node1 = currentList1, let node2 = currentList2 {
            if node1.val < node2.val {
                currentNode?.next = node1
                currentList1 = node1.next
            } else {
                currentNode?.next = node2
                currentList2 = node2.next
            }
            currentNode = currentNode?.next
        }
        
        currentNode?.next = currentList1 ?? currentList2
        
        return dummyNode.next
    }
}
func convertArraytoLinkedlist(array: [Int]) -> ListNode {
    var head: ListNode?
    var tail: ListNode?
    
    for val in array {
        let node = ListNode(val: val)
        if head == nil {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }
    }
    return head!
}

func forPrint(_ head: ListNode?) {
    var current = head
    while let node = current {
        print(node.val, terminator: " ")
        current = node.next
    }
    print()
}
let list1 = convertArraytoLinkedlist(array: [1, 2, 4])
let list2 = convertArraytoLinkedlist(array: [1, 3, 4])

let result = Solution().mergeTwoLists(list1, list2)
forPrint(result)
