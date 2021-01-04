# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxAncestorDiff(self, root: TreeNode) -> int:
        # check root
        if not root:
            return
        
        self.result = 0
        
        def compare(node, cur_min, cur_max):
            if not node:
                return
            
            self.result = max(self.result, abs(cur_max - node.val), abs(node.val - cur_min))
            cur_min = min(cur_min, node.val)
            cur_max = max(cur_max, node.val)
            compare(node.left, cur_min, cur_max)
            compare(node.right, cur_min, cur_max)
            
        compare(root, root.val, root.val)
        return self.result