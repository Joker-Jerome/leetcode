# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def detectCycle(self, head: ListNode) -> ListNode:
        # check
        if not head:
            return None
        
        dummy = ListNode()
        dummy.next = head
        
        # pointers 
        slow = head
        fast = head.next
        
        # check if there is a cycle
        flag = 0
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                flag = 1
                break
        
        # trick part
        if flag == 0:
            return None
        else: 
            slow = dummy.next # slow -> head
            fast = fast.next  # fast moves a step further
            while slow != fast:
                slow = slow.next
                fast = fast.next
            return slow    
            