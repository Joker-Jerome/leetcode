# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def deleteNode(self, root: TreeNode, key: int) -> TreeNode:
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
        # if root doesn't exist, just return it
        if not root: 
            return root
        # if key value is less than root value, search the left subtree
        if root.val > key: 
            root.left = self.deleteNode(root.left, key)
        # if key value is greater than root value, search the right subtree
        elif root.val < key: 
            root.right = self.deleteNode(root.right, key)
        # find the exact value
        else: 
            if not root.right: # if it doesn't have right children, new root would be root.left
                return root.left
            if not root.left: # if it doesn't have left children, new root would be root.right
                return root.right
            # if the node have both left and right children,  we replace its value with the minmimum value in the right subtree and then delete that minimum node in the right subtree
            temp = root.right
            mini = temp.val
            while temp.left:
                temp = temp.left
                mini = temp.val
            root.val = mini # replace value
            root.right = self.deleteNode(root.right, root.val) # delete the minimum node in right subtree
        return root


# very cool idea

# Note: 
[1] dfs to identify the right tree to deleteNode
[2] once identified, three situations:
    a. delete the left tree
    b. delete the right tree
    c. replace the origianl node with the minumum value of the right BST
     