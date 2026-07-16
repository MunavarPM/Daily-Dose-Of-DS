class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased().filter({ $0.isLetter || $0.isNumber}))
        
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            if chars[left] != chars[right] {
                print("\(chars[left]) \(chars[right])")
                return false
            }
            left += 1
            right -= 1
        }
        
        return true
    }
}
let ss = Solution()
print(ss.isPalindrome("A man, a plan, a canal: Panama"))
