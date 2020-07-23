# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def zigzagLevelOrder(self, root: TreeNode) -> List[List[int]]:
        """
        :type root: TreeNode
        :rtype: List[List[int]]
        """
        # level order
        if root is None:
            return []
        q = [[root]]
        res = [[root.val]]
        flag = 1
        while len(q) > 0:
            level = q.pop(0)
            next_level = []
            for node in level:
                if node.left:
                    next_level.append(node.left)
                if node.right:
                    next_level.append(node.right)
            if len(next_level) > 0:
                q.append(next_level)
                vec = [x.val for x in next_level]
                if flag == 1:
                    res.append(vec[::-1])
                else:
                    res.append(vec)
                flag *= -1
        return res


class Solution(object):
    def zigzagLevelOrder(self, root):
        """
        :type root: TreeNode
        :rtype: List[List[int]]
        """
        # level order
        if root is None:
            return []
        q = [[root]]
        for level in q:
            record = []
            for node in level:
                if node.left:
                    record.append(node.left)
                if node.right:
                    record.append(node.right)
            if record:
                q.append(record)
        # zigzag order
        res = []
        for index, level in enumerate(q):
            temp = [x.val for x in level]
            if index % 2 == 0:
                res.append(temp)
            else:
                res.append(temp[::-1])
        return res