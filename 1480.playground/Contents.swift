/**
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 Return the running sum of nums.
 */
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        guard nums.count > 0 else { return [] }

        var arr: [Int] = [nums[0]]
        var sum = nums[0]

        for i in 1..<nums.count {
            sum = sum + nums[i]
            arr.append(sum)
        }
        return arr
    }
}

Solution().runningSum([1,2,3,4])
