/*
Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

Example 1:

Input: head = [1,1,2]
Output: [1,2]
Example 2:


Input: head = [1,1,2,3,3]
Output: [1,2,3]
*/

class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head

        while current != nil && current!.next != nil {
            if current!.val == current!.next!.val {
                current!.next = current!.next!.next
            } else {
                current = current!.next
            }
        }

        return head
    }
}
func printList(_ head: ListNode?) {
    var current = head
    while current != nil {
        print(current!.val, terminator: " ")
        current = current!.next
    }
    print()
}
let ss = Solution()
let head1 = ListNode(1)
head1.next = ListNode(1)
head1.next!.next = ListNode(2)
let result = ss.deleteDuplicates(head1)
printList(result)
let head2 = ListNode(1)
head2.next = ListNode(1)
head2.next!.next = ListNode(2)
head2.next!.next!.next = ListNode(3)
head2.next!.next!.next!.next = ListNode(3)

let result2 = ss.deleteDuplicates(head2)
printList(result2)
