# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isBalanced(self, root: TreeNode) -> bool:
        # check 
        if root == None:
            return True
        
        # traverse the tree
        return self.check(root) != -1
        
    def check(self, node):
        if node == None:
            return 0
        left = self.check(node.left)
        right = self.check(node.right)
        if left == -1 or right == -1 or abs(left - right) > 1:
            return -1
        return 1 + max(left, right)  