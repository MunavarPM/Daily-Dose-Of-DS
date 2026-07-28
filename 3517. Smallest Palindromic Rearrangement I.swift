class Solution {
    func smallestPalindrome(_ s: String) -> String {
        var arrStr = Array(s).sorted()
        var arrAppend = [Character]()
        var left = [Character]()

        for i in arrStr {
            if arrAppend.contains(i) {
                left.append(i)
            if let index = arrAppend.firstIndex(of: i) {
                arrAppend.remove(at: index)
            }
        } else {
            arrAppend.append(i)
        }
    }
    var result = left

    if !arrAppend.isEmpty {
        result.append(arrAppend[0])
    }

    result += left.reversed()
        return String(result)
    }
}
