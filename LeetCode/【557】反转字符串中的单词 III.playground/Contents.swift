//给定一个字符串，你需要反转字符串中每个单词的字符顺序，同时仍保留空格和单词的初始顺序。
//
//示例 1:
//
//输入: "Let's take LeetCode contest"
//输出: "s'teL ekat edoCteeL tsetnoc"
//注意：在字符串中，每个单词由单个空格分隔，并且字符串中不会有任何额外的空格。

class Solution {
    func reverseWords(_ s: String) -> String {
        let chars = Array(s)
        var result = ""
        var left = -1
        var right = -1
        for (i,char) in chars.enumerated() {
            if char != " " {
                if left < 0 {
                    left = i
                }
                right = i
            } else {
                if left>=0 && right>=0 {
                    result.append(reverseWord(String(chars[left...right])))
                }
                result.append(char)
                left = -1
                right = -1
            }
        }
        if left>=0 && right>=0 {
            result.append(reverseWord(String(chars[left...right])))
        }
        return result
    }
    
    func reverseWord(_ word: String) -> String {
        var chars = Array(word)
        var left = 0
        var right = word.count-1
        while left<right {
            let tmp = chars[left]
            chars[left] = chars[right]
            chars[right] = tmp
            
            left += 1
            right -= 1
        }
        return String(chars)
    }
}

let origin = " Let's"
print(origin.count)
let result = Solution.init().reverseWords(origin)
print(result.count)
