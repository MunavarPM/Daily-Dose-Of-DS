class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var largest = 0
        var multipleValue = 0 
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                multipleValue = (nums[i]-1) * (nums[j]-1)
                if largest < multipleValue {
                    largest = multipleValue 
                }
            }
        }
        return largest
    }
}
