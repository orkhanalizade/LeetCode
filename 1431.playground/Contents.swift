/**
 Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.

 For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.
 */
class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard candies.count > 0 else { return [] }

        var arr: [Bool] = []
        var max = candies[0]

        candies.forEach { count in
            if count > max {
                max = count
            }
        }
        candies.forEach { count in
            arr.append(count + extraCandies >= max)
        }

        return arr
    }
}

Solution().kidsWithCandies([2,3,5,1,3], 3)
