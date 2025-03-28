class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        let num1 = nums1.sorted()
        let num2 = nums2.sorted()
        var result = [Int]()
        
        var i = 0, j = 0
        
        while i < num1.count && j < num2.count {
            if num1[i] == num2[j] {
                result.append(num1[i])
                i += 1
                j += 1
            } else if num1[i] < num2[j] {
                i += 1
            } else {
                j += 1
            }
        }
        
        return result
    }
}

let ss = Solution()
print(ss.intersect([1,2,2,1], [2,2]))
