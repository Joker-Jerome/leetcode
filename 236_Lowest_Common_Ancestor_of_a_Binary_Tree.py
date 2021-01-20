# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def __init__(self):
        self.ans = None
        
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        def recurse_tree(cur_node):
            if not cur_node:
                return False 
            
            # divide 
            left = recurse_tree(cur_node.left)
            right = recurse_tree(cur_node.right)
            

            # merge
            mid = cur_node == p or cur_node == q
            
            # if mid + left + right
            if mid + left + right >= 2:
                self.ans = cur_node
                
            return mid or left or right
        
        recurse_tree(root)
        return self.ans