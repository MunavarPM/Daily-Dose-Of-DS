func solution(A:[Int], K: Int) -> [Int] {
    var result = A
    for _ in 1...K {
        result = rotate(A: result)
    }
    return result
}

func rotate(A:[Int]) -> [Int] {
    var array = Array<Int>(repeating: 0, count: A.count)

    for i in 0..<A.count - 1 {
        array[i+1] = A[i]
    }
    array[0] = array.last!
    return array
}
let arr = [1, 3, 2, 5, 4, 6, 8, 7]
print(solution(A: arr, K: 2))
print(insertionSort(array: arr))
