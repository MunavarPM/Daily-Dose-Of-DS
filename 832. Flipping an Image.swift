class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        
        var finanlResult = [[Int]]()
        for row in image {
            let filpedArray = row.reversed()
            var newRow = [Int]()
            
            for i in filpedArray {
                if i == 0 {
                    newRow.append(1)
                } else {
                    newRow.append(0)
                }
            }
            finanlResult.append(newRow)
        }
        return finanlResult
    }
}

let image = [[1,1,0],[1,0,1],[0,0,0]]
let ss = Solution()
ss.flipAndInvertImage(image)
