//给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
//
//示例:
//
//输入: [0,1,0,3,12]
//输出: [1,3,12,0,0]
//说明:
//
//必须在原数组上操作，不能拷贝额外的数组。
//尽量减少操作次数。


class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroCount += 1
            } else {
                let tmp = nums[i-zeroCount]
                nums[i-zeroCount] = nums[i]
                nums[i] = tmp
            }
        }
    }
}

//var result = [0,1,0,3,12]
//var result = [0,0,0,0,0]
var result = [0,1,2,3,4,5,0]
Solution.init().moveZeroes(&result)
