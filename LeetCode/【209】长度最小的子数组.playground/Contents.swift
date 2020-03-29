//给定一个含有 n 个正整数的数组和一个正整数 s ，找出该数组中满足其和 ≥ s 的长度最小的连续子数组。如果不存在符合条件的连续子数组，返回 0。
//
//示例:
//
//输入: s = 7, nums = [2,3,1,2,4,3]
//输出: 2
//解释: 子数组 [4,3] 是该条件下的长度最小的连续子数组。
//进阶:
//
//如果你已经完成了O(n) 时间复杂度的解法, 请尝试 O(n log n) 时间复杂度的解法。

class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var result = 0
        for i in 0..<nums.count {
            var sum = 0
            for j in i..<nums.count {
                sum += nums[j]
                if sum >= s {
                    if result == 0 {
                        result = j-i+1
                    } else {
                        result = min(result, j-i+1)
                    }
                    break
                }
            }
        }
        return result
    }
}

Solution.init().minSubArrayLen(6, [2,3,1,2,4,3])
