//编写一个函数来查找字符串数组中的最长公共前缀。
//
//如果不存在公共前缀，返回空字符串 ""。
//
//示例 1:
//
//输入: ["flower","flow","flight"]
//输出: "fl"
//示例 2:
//
//输入: ["dog","racecar","car"]
//输出: ""
//解释: 输入不存在公共前缀。
//说明:
//
//所有输入只包含小写字母 a-z 。

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        guard strs.count > 0 else {
            return ""
        }
        
        guard strs.count > 1 else {
            return strs[0]
        }
        
        var result = [Character]()
        var index = 0
        var char = Character.init("1")
        while true {
            for (i, str) in strs.enumerated() {
                if index >= str.count {
                    return String(result)
                }
                let loopchar = str[str.index(str.startIndex, offsetBy: index)]
                if i == 0 {
                    char = loopchar
                } else {
                    if loopchar == char {
                        if i == strs.count-1 {
                            result.append(char)
                        }
                    } else {
                        return String(result)
                    }
                }
            }
            index += 1
        }
    }
}

//Solution.init().longestCommonPrefix([])

Solution.init().longestCommonPrefix(["cat"])

//Solution.init().longestCommonPrefix(["flower","flow","flight"])

//Solution.init().longestCommonPrefix(["dog","racecar","car"])

