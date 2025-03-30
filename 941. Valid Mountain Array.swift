class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        
        let n = arr.count
        if n < 3 { return false }
        var i = 0
        
        while i + 1 < n && arr[i] < arr[i + 1] {
            i += 1
        }
        if i == 0 || i == n - 1 {
            return false // If the peak is at the beginning or end, return false (because it's not a mountain).
        }
        while i + 1 < n && arr[i] > arr[i + 1] {
            i += 1
        }
        return i == n - 1
    }
}
let arr = [0,3,2,1]
let arrSec = [3,5,5]
let ss = Solution()
ss.validMountainArray(arr)
