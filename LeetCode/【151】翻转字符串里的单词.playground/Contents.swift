//给定一个字符串，逐个翻转字符串中的每个单词。
//
//
//
//示例 1：
//
//输入: "the sky is blue"
//输出: "blue is sky the"
//示例 2：
//
//输入: "  hello world!  "
//输出: "world! hello"
//解释: 输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
//示例 3：
//
//输入: "a good   example"
//输出: "example good a"
//解释: 如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。
//
//
//说明：
//
//无空格字符构成一个单词。
//输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
//如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。
//
//
//进阶：
//
//请选用 C 语言的用户尝试使用 O(1) 额外空间复杂度的原地解法。


class Solution {
    func reverseWords(_ s: String) -> String {
        let reverseWords = Array(reverseWord(s))
        var result = ""
        var wordStart = -1
        for (i,char) in reverseWords.enumerated() {
            if char == " " {
                if wordStart >= 0 {
                    result.append(reverseWord(String(reverseWords[wordStart..<i])))
                    result.append(" ")
                }
                wordStart = -1
                continue
            } else {
                if wordStart < 0 {
                    wordStart = i
                }
            }
        }
        if wordStart >= 0 {
            result.append(reverseWord(String(reverseWords[wordStart..<reverseWords.count])))
        } else if result.count > 0 {
            result.removeLast()
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

Solution.init().reverseWords("the sky is blue")
Solution.init().reverseWords("  hello world!  ")
Solution.init().reverseWords("a good   example")
Solution.init().reverseWord(" ")

