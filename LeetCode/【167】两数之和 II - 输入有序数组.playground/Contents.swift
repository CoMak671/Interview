//给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
//
//函数应该返回这两个下标值 index1 和 index2，其中 index1 必须小于 index2。
//
//说明:
//
//返回的下标值（index1 和 index2）不是从零开始的。
//你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。
//示例:
//
//输入: numbers = [2, 7, 11, 15], target = 9
//输出: [1,2]
//解释: 2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var numDic = [Int:Int?]()
        for (i, number) in numbers.enumerated() {
            numDic[number] = i
        }
        for (i, number) in numbers.enumerated() {
            if let other = numDic[target-number] {
                if i != other! {
                    return [i+1, other!+1]
                }
            }
        }
        return []
    }
    
    func twoSum2(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count-1
        while left < right {
            let temp = numbers[left]+numbers[right]
            if temp == target {
                return [left+1, right+1]
            } else if temp > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return []
    }
}

//Solution.init().twoSum2([2, 7, 11, 15], 9)

Solution.init().twoSum2([2, 4, 4, 5], 8)

//Solution.init().twoSum([2, 4, 5], 8)

//Solution.init().twoSum([-1, 0], -1)
