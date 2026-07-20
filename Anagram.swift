func isAnagram(_ s: String, _ t: String) -> Bool {

    if s.count != t.count {
        return false
    }

    var dict: [Character: Int] = [:]

    // Count characters from first string
    for char in s {
        dict[char, default: 0] += 1
    }

    // Remove counts using second string
    for char in t {
        if let count = dict[char] {
            dict[char] = count - 1

            if dict[char] == 0 {
                dict.removeValue(forKey: char)
            }
        } else {
            return false
        }
    }

    return dict.isEmpty
}
