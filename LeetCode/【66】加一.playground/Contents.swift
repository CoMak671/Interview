//给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
//
//最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
//
//你可以假设除了整数 0 之外，这个整数不会以零开头。
//
//示例 1:
//
//输入: [1,2,3]
//输出: [1,2,4]
//解释: 输入数组表示数字 123。
//示例 2:
//
//输入: [4,3,2,1]
//输出: [4,3,2,2]
//解释: 输入数组表示数字 4321。

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = [Int]()
        var divisor = 1
        for digit in digits.reversed() {
            let remainder = (digit+divisor)%10
            result.append(remainder)
            divisor = (digit+divisor)/10
        }
        if divisor > 0 {
            result.append(divisor)
        }
        return result.reversed()
    }
}

Solution.init().plusOne([9,9,9])
