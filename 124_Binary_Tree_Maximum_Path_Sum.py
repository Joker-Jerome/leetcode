# 124. Binary Tree Maximum Path Sum
# Hard

# 4977

# 367

# Add to List

# Share
# A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

# The path sum of a path is the sum of the node's values in the path.

# Given the root of a binary tree, return the maximum path sum of any path.


# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def __init__(self):
        self.ans = -inf
        
    def maxPathSum(self, root: TreeNode) -> int:
        def maxsum(node):
            if not node:
                return False
            
            # divide 
            left = maxsum(node.left)
            right = maxsum(node.right)
            
            # merge 
            max_val = max(node.val, node.val + left, node.val + right, node.val + left + right )
            if max_val > self.ans:
                self.ans = max_val
            return max(node.val, node.val + left, node.val + right)
        
        maxsum(root)
        return self.ans

# takeaway 
There are two things that are recorded along the recursion: 
1. The global max sum 
2. Output of the subproblem: in this case, only the node value, the left + node.val or the right + node.val
