//给定一个非负索引 k，其中 k ≤ 33，返回杨辉三角的第 k 行。
//
//
//
//在杨辉三角中，每个数是它左上方和右上方的数的和。
//
//示例:
//
//输入: 3
//输出: [1,3,3,1]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/pascals-triangle-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        let rowCount = rowIndex+1
        var result = [[Int]](repeating: [], count: rowCount)
        for i in 0..<rowCount {
            for j in 0..<i+1 {
                if j == 0 {
                    result[i].append(1)
                } else if j == i {
                    result[i].append(1)
                } else {
                    result[i].append(result[i-1][j-1]+result[i-1][j])
                }
            }
        }
        return result[rowCount-1]
    }
}

Solution.init().getRow(0)
Solution.init().getRow(3)

//    1
//   1 1
//  1 2 1
// 1 3 [3] 1
//
//i=3
//j=2
//a[i][j] = a[i-1][j-1] + a[i-1][j]
//
//a[3][2] =
//    a[2][1] + a[2][2]
//    a[1][0]+a[1][1] + a[2][2]

