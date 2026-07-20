class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        var pairs = 0 
        var leftInArr = Set<Int>()
        
        for i in nums {
            if leftInArr.contains(i) {
                leftInArr.remove(i)
                pairs += 1
            } else {
                leftInArr.insert(i)
            }
        }
        return [pairs, leftInArr.count]
    }
}

let ss = Solution()
print(ss.numberOfPairs([1,3,2,1,3,2,2]))
