/*
Here K represent's the time's of the rotation. Mean's it get jumbing indies from one to two 
*/




func solution(A: [Int], K: Int) -> [Int] {
    
    guard !A.isEmpty else { return [] }
    guard K > 0 else { return A }
    
    var result = A
    
    for _ in 1...K {
        result = rotateRightOnce(A: result)
    }
    return result
}
func rotateRightOnce(A: [Int]) -> [Int] {
    var newArray = Array<Int>(repeating: 0, count: A.count) /// Allocating memory A.count times
    for i in 0..<A.count - 1 {
        newArray[i + 1] = A[i]
    }
    newArray[0] = A.last!
    
    return newArray
}

print(solution(A: [1,2,3,4,5], K: 1))
print(solution(A: [1,2,3,4,5], K: 2))
print(solution(A: [1,2,3,4,5], K: 3))
print(solution(A: [9,8,7,6,5], K: 3))
