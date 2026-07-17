func palidrom(_ str: String) -> Bool {

    let arr = Array(str)
    var first = 0
    var last = arr.count - 1
    
    while first < last {
        if arr[first] != arr[last] {
            return false
        }
        first += 1
        last -= 1
    }
    return true
}

print(palidrom("heeh"))
