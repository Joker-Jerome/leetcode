# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseBetween(self, head: ListNode, m: int, n: int) -> ListNode:
        if not head:
            return None
        # init
        prev, cur = None, head
        
        # move the pointer 
        for i in range(m-1):
            prev = cur
            cur = cur.next
            
        # mark the junctions
        con = prev 
        tail = cur
        
        # after this step cur is at the mth position
        for i in range(n-m+1):
            next_node = cur.next
            cur.next = prev
            # move the pointers
            prev = cur
            cur = next_node
        
        # final connections
        if con:
            con.next = prev # 1 - >
        else:
            head = prev
        tail.next = cur
        return head
            