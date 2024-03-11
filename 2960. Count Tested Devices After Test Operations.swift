/*
You are given a 0-indexed integer array batteryPercentages having length n, denoting the battery percentages of n 0-indexed devices.

Your task is to test each device i in order from 0 to n - 1, by performing the following test operations:

If batteryPercentages[i] is greater than 0:
Increment the count of tested devices.
Decrease the battery percentage of all devices with indices j in the range [i + 1, n - 1] by 1, ensuring their battery percentage never goes below 0, i.e, batteryPercentages[j] = max(0, batteryPercentages[j] - 1).
Move to the next device.
Otherwise, move to the next device without performing any test.
Return an integer denoting the number of devices that will be tested after performing the test operations in order.

 

Example 1:

Input: batteryPercentages = [1,1,2,1,3]
Output: 3
Explanation: Performing the test operations in order starting from device 0:
At device 0, batteryPercentages[0] > 0, so there is now 1 tested device, and batteryPercentages becomes [1,0,1,0,2].
At device 1, batteryPercentages[1] == 0, so we move to the next device without testing.
At device 2, batteryPercentages[2] > 0, so there are now 2 tested devices, and batteryPercentages becomes [1,0,1,0,1].
At device 3, batteryPercentages[3] == 0, so we move to the next device without testing.
At device 4, batteryPercentages[4] > 0, so there are now 3 tested devices, and batteryPercentages stays the same.
So, the answer is 3.
Example 2:

Input: batteryPercentages = [0,1,2]
Output: 2
Explanation: Performing the test operations in order starting from device 0:
At device 0, batteryPercentages[0] == 0, so we move to the next device without testing.
At device 1, batteryPercentages[1] > 0, so there is now 1 tested device, and batteryPercentages becomes [0,1,1].
At device 2, batteryPercentages[2] > 0, so there are now 2 tested devices, and batteryPercentages stays the same.
So, the answer is 2.
*/

class Solution {
    func countTestedDevices(_ batteryPercentages: [Int]) -> Int {
        batteryPercentages.reduce(0, { ($1 - $0) > 0 ? ($0 + 1) : $0 })
    }
}

let batteryPercentages = [1, 1, 2, 1, 3]
let solution = Solution()
let testedDevicesCount = solution.countTestedDevices(batteryPercentages)
print("Number of Tested Devices: \(testedDevicesCount)")

/*
batteryPercentages = [1, 1, 2, 1, 3]

reduce function is called on the batteryPercentages array with an initial value of 0.

For each element in the array, the closure is executed. Here's what happens:

At the first iteration: 1 - 0 = 1, so the condition ($1 - $0) > 0 is true, and the result becomes 0 + 1 = 1.
At the second iteration: 1 - 1 = 0, so the condition ($1 - $0) > 0 is false, and the result remains 1.
At the third iteration: 2 - 1 = 1, so the condition ($1 - $0) > 0 is true, and the result becomes 1 + 1 = 2.
At the fourth iteration: 1 - 2 = -1, so the condition ($1 - $0) > 0 is false, and the result remains 2.
At the fifth iteration: 3 - 1 = 2, so the condition ($1 - $0) > 0 is true, and the result becomes 2 + 1 = 3.
The final result of the reduction is 3.

Therefore, according to the given code and the provided array [1, 1, 2, 1, 3], the number of tested devices is 3.

This result matches the expected output for the provided array [1, 1, 2, 1, 3]. If you have any further questions or need additional clarification, feel free to ask!
*/
