# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseBetween(self, head: ListNode, m: int, n: int) -> ListNode:
        if not head:
            return None
        
        # move the two pointers
        cur, prev = head, None
        while m > 1:
            prev = cur
            cur = cur.next
            m, n = m - 1, n - 1
            
        con = prev
        tail = cur
        
        while n > 0:
            cur_next = cur.next
            cur.next = prev
            prev = cur
            cur = cur_next
            n -= 1
            
        # connect the nodes
        if con:
            con.next = prev
        else:
            head = con
        tail.next = cur
        
        return head