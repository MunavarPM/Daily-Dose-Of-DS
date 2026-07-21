/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var values = [Int]()
        var currenNode = head
        
        while let node = currenNode {
            values.append(node.val)
            currenNode = node.next
        }
        
        var left = 0
        var right = values.count - 1
        
        while left < right {
            if values[left] != values[right] {
                return false
            }
            
            left += 1
            right -= 1
        }
        return true
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(2)
head.next?.next?.next = ListNode(1)

let solution = Solution()
print(solution.isPalindrome(head)) 
