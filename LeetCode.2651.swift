/*
You are given a positive integer arrivalTime denoting the arrival time of a train in hours, and another positive integer delayedTime denoting the amount of delay in hours.

Return the time when the train will arrive at the station.

Note that the time in this problem is in 24-hours format.
Most easiest question you start for beginner crak.
100% working Code....

 */


class Solution {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        (arrivalTime + delayedTime) % 24
    }
}
