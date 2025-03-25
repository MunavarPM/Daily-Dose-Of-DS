class Solution {
    func addDigits(_ num: Int) -> Int {
        
        var num = num
        
        while num >= 10 {
            var sum = 0
            
            for i in String(num) {
                sum += Int(String(i)) ?? 0
            }
            
            num = sum
        }
        
        return num
    }
}
let ss = Solution()
print(ss.addDigits(10))
