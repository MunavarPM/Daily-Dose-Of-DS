func dublicateElemet(arr: [Int]) -> [Int] {
    var dict = [Int: Int]()
    for i in arr {
         dict[i, default: 0] += 1
    }
    
    var dublicateValue = [Int]()
    
    for dub in arr {
        if let count = dict[dub], count > 1 {
            dublicateValue.append(dub)
        }
    }
    
    return dublicateValue
}

print(dublicateElemet(arr: [1, 1, 2, 3, 2, 5, 1])) 
