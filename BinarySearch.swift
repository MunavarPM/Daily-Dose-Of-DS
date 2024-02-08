let arrray = [1,2,3,4,5,6,7,11,12,44]

func binary(value: Int, arr: [Int]) -> Int? {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let middleIndex = (left + right) / 2
        let middleValue = arr[middleIndex]
        
        if middleValue > value {
            right = middleIndex - 1
        } else if middleValue < value {
            left = middleIndex + 1
        }
        else if middleValue == value {
            return middleIndex
        }
    }
    return nil
}
let arrr = binary(value: 2, arr: arrray)
print(arrr ?? -1)
