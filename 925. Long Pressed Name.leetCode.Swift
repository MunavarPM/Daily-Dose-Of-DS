/*
Your friend is typing his name into a keyboard. Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.

You examine the typed characters of the keyboard. Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.

 

Example 1:


Input: name = "alex", typed = "aaleex"
Output: true
Explanation: 'a' and 'e' in 'alex' were long pressed.
Example 2:

Input: name = "saeed", typed = "ssaaedd"
Output: false
Explanation: 'e' must have been pressed twice, but it was not in the typed output.

*/



class Solution {
    func isLongPressedName(_ name: String, _ typed: String) -> Bool {
    var i = 0
    var j = 0

    while i < name.count && j < typed.count {
        let nameChar = name[name.index(name.startIndex, offsetBy: i)]
        let typedChar = typed[typed.index(typed.startIndex, offsetBy: j)]

        if nameChar == typedChar {
            i += 1
            j += 1
        } else if j > 0 && typedChar == typed[typed.index(typed.startIndex, offsetBy: j - 1)] {
            j += 1
        } else {
            return false
        }
    }

    while j < typed.count && typed[typed.index(typed.startIndex, offsetBy: j)] == typed[typed.index(typed.startIndex, offsetBy: j - 1)] {
        j += 1
    }

    return i == name.count && j == typed.count
}

}
