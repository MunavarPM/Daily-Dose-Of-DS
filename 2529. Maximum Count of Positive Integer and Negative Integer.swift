
class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        
        var positive = 0
        var negative = 0
        for i in 0..<nums.count {
            if nums[i] > 0 {
                positive += 1
            } else if nums[i] < 0 {
                negative += 1
            }
        }
        
        return max(positive, negative)
    }
}

let ss = Solution()
ss.maximumCount([-3, -1, 0, 2, 4, 5])
