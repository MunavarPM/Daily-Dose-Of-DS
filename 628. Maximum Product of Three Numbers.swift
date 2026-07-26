class Solution {
    func maximumProduct(_ nums: [Int]) -> Int {
        let nums = nums.sorted()

        let n = nums.count

        let option1 = nums[n - 1] * nums[n - 2] * nums[n - 3]
        let option2 = nums[0] * nums[1] * nums[n - 1]

        return max(option1, option2)
    }
}
