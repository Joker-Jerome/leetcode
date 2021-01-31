# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param inorder, a list of integers
    # @param postorder, a list of integers
    # @return a tree node
    # 12:00
    def buildTree(self, preorder, inorder):
        if not inorder or not preorder:
            return None
        
        root = TreeNode(preorder.pop(0))
        inorderIndex = inorder.index(root.val)
        
        root.left = self.buildTree(preorder, inorder[:inorderIndex])
        root.right = self.buildTree(preorder, inorder[inorderIndex+1:])

        return root
    
# the last element will be the root in postorder 
# then use the root to split the inorder sequence 
# recursively 