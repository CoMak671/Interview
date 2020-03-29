/*
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
 
 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
 
 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 
 示例：
 
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
*/

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let dummyHead = ListNode.init(0)
        
        var p = l1
        var q = l2
        var curNode: ListNode? = dummyHead
        var carry: Int = 0
        
        while p != nil || q != nil {
            let x = p?.val ?? 0
            let y = q?.val ?? 0
            let sum = carry + x + y
            carry = sum / 10
            curNode?.next = ListNode.init(sum % 10)
            curNode = curNode?.next
            
            p = p?.next
            q = q?.next
        }
        
        if carry>0 {
            curNode?.next = ListNode.init(carry)
        }
        
        return dummyHead.next
        
    }
}

let l1 = ListNode.init(5)
let l2 = ListNode.init(5)

Solution.init().addTwoNumbers(l1, l2)
