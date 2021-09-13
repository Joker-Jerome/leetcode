# You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.
# Merge all the linked-lists into one sorted linked-list and return it.
# important notice heapq: for duplicate cases, we need another idx to represent the results
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
import heapq

class Solution:
    def mergeKLists(self, lists: List[Optional[ListNode]]) -> Optional[ListNode]:
        # check 
        if not lists:
            return None
        
        # init
        count = 0
        head = point = ListNode(0)
        q = []
        for l in lists:
            if l:
                heapq.heappush(q, (l.val, count, l))
                count += 1
            
        while len(q) != 0:
            val, _, node = heapq.heappop(q)
            node_cur = node.next
            if node_cur:
                heapq.heappush(q, (node_cur.val, count, node_cur))
                count += 1
            point.next = node
            point = node
        
        return head.next
            
