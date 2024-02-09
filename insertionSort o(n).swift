
func insertionSort(array: [Int]) -> [Int] {
    var array = array
    for i in 1..<array.count {
        var position = i
        let value = array[i]
        while position > 0 && array[position - 1] > value {
            array[position] = array[position - 1]
            position -= 1
        }
        array[position] = value
    }
    return array
}
