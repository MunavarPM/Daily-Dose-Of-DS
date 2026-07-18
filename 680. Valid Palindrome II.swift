class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let arr = Array(s)
        var left = 0
        var right = arr.count - 1
        func isPalindrome(_ left: Int, _ right: Int) -> Bool {
            var left = left
            var right = right
            while left < right {
                if arr[left] != arr[right] {
                    return false
                }
                left += 1
                right -= 1
            }
            return true
        }

        while left < right {
            if arr[left] != arr[right] {
                return isPalindrome(left + 1, right) || isPalindrome(
                    left,
                    right - 1
                )
            }
            left += 1
            right -= 1
        }
        return true
    }
}
