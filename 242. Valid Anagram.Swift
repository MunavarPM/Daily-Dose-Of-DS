# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 

# Example 1:

# Input: s = "anagram", t = "nagaram"
# Output: true
# Example 2:

# Input: s = "rat", t = "car"
# Output: false


class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict: [Character: Int] = [:]
        var tDict: [Character: Int] = [:]
        for char in s {
            sDict[char, default: 0] += 1
        }
        for char in t {
            tDict[char, default: 0] += 1
        }
        return sDict == tDict /// Easy check 
    }
}


let ss = Solution()
ss.isAnagram("anagram", "nagaram")
