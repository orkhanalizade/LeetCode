/**
 Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
 Return the array in the form [x1,y1,x2,y2,...,xn,yn].
 */
class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        guard nums.count > 1 else { return nums }
        var arr: [Int] = []

        for i in 0..<nums.count / 2 {
            arr.append(nums[i])
            arr.append(nums[i + n])
        }

        return arr
    }
}

Solution().shuffle([2,5,1,3,4,7], 3)
