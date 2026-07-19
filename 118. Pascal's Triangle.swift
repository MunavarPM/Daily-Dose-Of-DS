class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        for i in 0...numRows - 1 {
            var row: [Int] = []
            for j in 0...i {
                if j == 0 || j == i {
                    row.append(1)
                } else {
                    row.append(result[i-1][j-1] + result[i-1][j])
                }
            }
            result.append(row)
        }
        return result
    }
}

let ss = Solution()
print(ss.generate(5))
