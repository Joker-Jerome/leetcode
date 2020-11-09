# Reverse a singly linked list singly linked list means the list can only be fetch from one direction

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next

#1 -> 2 -> 3
# prev -> cur -> cur.next -> cur.next.next
# prev <- cur <- cur.next
class Solution:
	# iterative
    def reverseList(self, head: ListNode) -> ListNode:
    	if head == None:
    		return None

    	prev = None
    	cur = head

    	while cur:
    		cur_next = cur.next
    		cur.next = prev
    		prev = cur
    		cur = cur_next

    	return prev

# cur -> cur.next -> cur.next.next
# None <- cur.next <-  cur <- cur.next.next

# 0 -> 1 -> 2 -> 3 -> 6 -> 5 -> 4

# https://leetcode.com/problems/reverse-linked-list/solution/
    # recursive
    def reverseList(self, head: ListNode) -> ListNode:
    	if not head or not head.next:
            return head

        # think of it as the head returned from this function
        p = self.reverseList(head.next)
        
        head.next.next = head 
        head.next = None

        return p

