class Solution:
    def removeElements(self, head: ListNode, val: int) -> ListNode:
        while head and head.val == val:
            head = head.next 
        if not head:
            return head
        tmp_node = head
        while tmp_node.next != None:
            print(tmp_node.val)
            if tmp_node.next.val == val:
                tmp_node.next = tmp_node.next.next
            else:
                tmp_node = tmp_node.next
        return head 