/*
Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

Example 1:


Input: x = 123
Output: 321
Example 2:

Input: x = -123
Output: -321
Example 3:

Input: x = 120
Output: 21
100% Working Code.
*/


class Solution {
    func reverse(_ x: Int) -> Int {
    var result = 0
    var input = x
    
    while input != 0 {
        let pop = input % 10
        input /= 10
        
        if result > Int32.max / 10 || (result == Int32.max / 10 && pop > 7) {
            return 0
        }
        
        if result < Int32.min / 10 || (result == Int32.min / 10 && pop < -8) {
            return 0
        }
        
        result = result * 10 + pop
    }
    
    return result
    }
}
