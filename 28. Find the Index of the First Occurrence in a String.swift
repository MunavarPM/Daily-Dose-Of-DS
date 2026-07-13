class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        let hArray = Array(haystack)
        let nArray = Array(needle)
                
        let hCount = hArray.count
        let nCount = nArray.count
        
        if nCount > hCount {
            return -1
        }
        
        for i in 0...(hCount - nCount) {
            var isMatched = true
            
            for j in 0..<nCount {
                if hArray[i+j] != nArray[j] {
                    isMatched = false
                    break
                }
            }
            
            if isMatched {
                return i
            }
        }
        return -1
    }
}

let ss = Solution()
ss.strStr("leetcode", "leeto")
