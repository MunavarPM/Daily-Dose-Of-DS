public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p == nil || q == nil { return false }
        if p?.val != q?.val { return false }
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
let ss = Solution()

let pNode = TreeNode(1)
pNode.left = TreeNode(2)
pNode.right = TreeNode(1)

let qNode = TreeNode(1)
qNode.left = TreeNode(1)
qNode.right = TreeNode(2)

let result = ss.isSameTree(pNode, qNode)
print("Are the trees the same? \(result)")
