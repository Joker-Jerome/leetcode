# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def findTilt(self, root: TreeNode) -> int:
        total_tilt = 0
        
        def valueSum(node):
            nonlocal total_tilt
            
            if not node:
                return 0
            
            left_sum = valueSum(node.left)
            right_sum = valueSum(node.right)
            tmp_tilt = abs(right_sum - left_sum)
            
            total_tilt += tmp_tilt
            tmp_sum = left_sum + right_sum + node.val
            
            return(tmp_sum)
        
        valueSum(root)
    
        return total_tilt
            