
/**
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。

 示例 1:

 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:

 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 示例 3:

 输入: "pwwkew" abba
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
      请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 */

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var maxLength = 0
        var loopLength = 0
        var dic = [Character:Int]()
        for i in 0..<s.count {
            let c = s[s.index(s.startIndex, offsetBy: i)]
            if let valueIndex = dic[c] {
                maxLength = max(maxLength, loopLength)
                loopLength = i-valueIndex
                dic[c] = i
            } else {
                dic[c] = i
                loopLength+=1
            }
        }
        maxLength = max(maxLength, loopLength)
        return maxLength
    }
}

let result = Solution.init().lengthOfLongestSubstring("pwwkew")
