class Solution {
    func findMissingElements(_ nums: [Int]) -> [Int] {
        let nums = nums.sorted()
        var result = [Int]()
        let firstIndex = nums.first!
        let lastIndex = nums.last!

        for i in firstIndex...lastIndex {
            if !nums.contains(i) {
                result.append(i)
            } 
        }
        return result 
    }
}
