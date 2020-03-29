//给定一个含有 M x N 个元素的矩阵（M 行，N 列），请以对角线遍历的顺序返回这个矩阵中的所有元素，对角线遍历如下图所示。
//
//
//
//示例:
//
//输入:
//[
// [ 1, 2, 3 ],
// [ 4, 5, 6 ],
// [ 7, 8, 9 ]
//]
//
//输出:  [1,2,4,7,5,3,6,8,9]
//
//解释:
//
//
//
//说明:
//
//给定矩阵中的元素总数不会超过 100000 。

class Solution {
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.count <= 0 {
            return []
        }
        
        let M = matrix.count
        let N = matrix[0].count
        var result = [Int]()
        var PositiveSequence = false
        for num in 0..<M+N {
            for i in 0..<num+1 {
                let m: Int
                let n: Int
                if PositiveSequence {
                    m = i
                    n = num-i
                } else {
                    m = num-i
                    n = i
                }
                if m<M && n<N {
                    result.append(matrix[m][n])
                }
            }
            PositiveSequence = !PositiveSequence
        }
        return result
    }
    
    func findDiagonalOrder2(_ matrix: [[Int]]) -> [Int] {
        let M = matrix.count
        guard M > 0 else {
            return []
        }
        
        let N = matrix[0].count
        guard N > 0 else {
            return []
        }
        
        var result = [Int]()
        var m = 0
        var n = 0
        
        for _ in 0..<M*N {
            result.append(matrix[m][n])
            if m+n % 2 == 0 { // 偶数
                if n == 0 { // 最后1列
                    m += 1
                } else {
                    m += 1
                    n -= 1
                }
            } else {
                
            }
        }
        return result
    }
}

Solution.init().findDiagonalOrder([
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
])

Solution.init().findDiagonalOrder([])

Solution.init().findDiagonalOrder([
 [ 1, 2, 3 ]
])

Solution.init().findDiagonalOrder([
 [ 1 ],
 [ 4 ],
 [ 7 ]
])
