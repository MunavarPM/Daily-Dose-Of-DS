func solution(_ S: String) -> String {
    
    let noSpace = S.replacingOccurrences(of: " ", with: "")
    let noSpacenoDash = noSpace.replacingOccurrences(of: "-", with: "")
    
    var result = ""
    var count = -2
    for c in noSpacenoDash {
        result.append(c)
        if count % 3 == 0 {
            result.append("-")
        }
        count += 1
    }
    if result.last == "-" {
        result = String(result.dropLast())
    }
    var char = Array(result)
    let secondLastPosition = char.count - 2
    if char[secondLastPosition] == "-" {
        /// Swapign  * - *  to  - * *
        char[secondLastPosition] = char[secondLastPosition - 1]
        char[secondLastPosition - 1] = "-"
    }
    
    return String(char)
}

print(solution("123456789")) //123-456-789
print(solution("555365274")) //555-365-274
print(solution("0 - 22 1985--325")) //022-198-53-25
print(solution("10")) //10
print(solution("102")) //102
print(solution("1024")) //10-24
print(solution("1024     444")) // 102-44-44
print(solution("---------1024     444")) // 102-44-44
