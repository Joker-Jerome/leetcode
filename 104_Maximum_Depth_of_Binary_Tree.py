# 104_Maximum_Depth_of_Binary_Tree.py

# Given the root of a binary tree, return its maximum depth.

# A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        # check 
        if not root:
            return 0
        
        # divide and conque 
        left_max = self.maxDepth(root.left)
        right_max = self.maxDepth(root.right)
        
        return max(left_max, right_max) + 1