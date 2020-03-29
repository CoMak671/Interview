//给定两个二进制字符串，返回他们的和（用二进制表示）。
//
//输入为非空字符串且只包含数字 1 和 0。
//
//示例 1:
//
//输入: a = "11", b = "1"
//输出: "100"
//示例 2:
//
//输入: a = "1010", b = "1011"
//输出: "10101"

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
            let big: [Character]
            let small: [Character]
            if a.count > b.count {
                big = a.reversed()
                small = b.reversed()
            } else {
                big = b.reversed()
                small = a.reversed()
            }
            
            var result = [Character]()

            var remainder = 0 // 余数
            var divisor = 0 // 除数
            for i in 0..<small.count {
                let sum = small[small.index(small.startIndex, offsetBy: i)].wholeNumberValue! + big[big.index(big.startIndex, offsetBy: i)].wholeNumberValue! + divisor
                remainder = sum % 2
                divisor = sum / 2
                result.append(Character("\(remainder)"))
            }
            for i in small.count..<big.count {
                let sum = big[big.index(big.startIndex, offsetBy: i)].wholeNumberValue! + divisor
                remainder = sum % 2
                divisor = sum / 2
                result.append(Character("\(remainder)"))
            }
            if divisor > 0 {
                result.append(Character("\(divisor)"))
            }
            
            return String(result.reversed())
    }
}

//Solution.init().addBinary("11", "")
//Solution.init().addBinary("11", "1")
Solution.init().addBinary("1010", "1011")
