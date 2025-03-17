class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        guard intervals.count > 1 else { return intervals }
        
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0] }) // sored
        
        var result: [[Int]] = [sortedIntervals[0]]
        print("Initial result: \(result)")
        
        for interval in sortedIntervals[1...] {
            print("\nCurrent interval: \(interval)")
            var last = result.removeLast()
            print("Last = ", last)
            if interval[0] <= last[1] {
                last[1] = max(interval[1], last[1])
                result.append(last)
            } else {
                print("No overlap. Adding both: \(last) & \(interval)")
                result.append(last)
                result.append(interval)
            }
            
        }
        
        return result
    }
}

let intervals1 = [[1,3],[8,10],[15,18],[2,6]]
let ss = Solution()
print(ss.merge(intervals1))

