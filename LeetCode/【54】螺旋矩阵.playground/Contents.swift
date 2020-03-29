//给定一个包含 m x n 个元素的矩阵（m 行, n 列），请按照顺时针螺旋顺序，返回矩阵中的所有元素。
//
//示例 1:
//
//输入:
//[
// [ 1, 2, 3 ],
// [ 4, 5, 6 ],
// [ 7, 8, 9 ]
//]
//输出: [1,2,3,6,9,8,7,4,5]
//示例 2:
//
//输入:
//[
//  [1, 2, 3, 4],
//  [5, 6, 7, 8],
//  [9,10,11,12]
//]
//输出: [1,2,3,4,8,12,11,10,9,5,6,7]


class Solution {
    
    enum Direction {
        case LEFT
        case RIGHT
        case UP
        case DOWN
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let M = matrix.count
        guard M > 0 else {
            return []
        }
        guard M > 1 else {
            return matrix[0]
        }
        
        let N = matrix[0].count
        guard N > 0 else {
            return []
        }
        
        var result = [Int]()
        result.append(matrix[0][0])
        
        var minX = 0
        var maxX = N-1
        var minY = 1
        var maxY = M-1
        
        var m = 0
        var n = 0
        var dir = Direction.RIGHT
        
        while ((n>=minX || n<=maxX) && (m>=minY || m<=maxY)) {
            switch dir {
            case .RIGHT:
                if n+1 > maxX {
                    dir = .DOWN
                    maxX -= 1
//                    print("TURN DOWN maxX:\(maxX)")
                    continue
                } else {
                    n += 1
                }
            case .DOWN:
                if m+1 > maxY {
                    dir = .LEFT
                    maxY -= 1
//                    print("TURN LEFT maxY:\(maxY)")
                    continue
                } else {
                    m += 1
                }
            case .LEFT:
                if n-1 < minX {
                    dir = .UP
                    minX += 1
//                    print("TURN UP minX:\(minX)")
                    continue
                } else {
                    n -= 1
                }
            case .UP:
                if m-1 < minY {
                    dir = .RIGHT
                    minY += 1
//                    print("TURN RIGHT minY:\(minY)")
                    continue
                } else {
                    m -= 1
                }
            }
            result.append(matrix[m][n])
//            print("n:\(n) m:\(m)")
//            print("minX:\(minX) maxX:\(maxX) minY:\(minY) maxY:\(maxY)")
        }
        return result
    }
}

//Solution.init().spiralOrder([
// [ 1, 2, 3 ],
// [ 4, 5, 6 ],
// [ 7, 8, 9 ]
//])
//
//Solution.init().spiralOrder([
//  [1, 2, 3, 4],
//  [5, 6, 7, 8],
//  [9,10,11,12]
//])
//
//Solution.init().spiralOrder([
//    [7],
//    [9],
//    [6]
//])

Solution.init().spiralOrder([
    [ 2, 3, 4],
    [ 5, 6, 7],
    [ 8, 9,10],
    [11,12,13],
    [14,15,16]
])
