Given the root of a binary tree and an integer targetSum, return all root-to-leaf paths where each path's sum equals targetSum.

A leaf is a node with no children.



# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def __init__(self):
            self.res = []
            
    def pathSum(self, root: TreeNode, targetSum: int) -> List[List[int]]:
        
        def dfs(node, targetSum, tmp_res = []):
            if node:
                if not node.left and not node.right and targetSum - node.val == 0:
                    self.res.append(tmp_res + [node.val])
                if node.left:
                    dfs(node.left, targetSum - node.val, tmp_res + [node.val])
                if node.right:
                    dfs(node.right, targetSum - node.val, tmp_res + [node.val])
        
        dfs(root, targetSum, [])
        return(self.res)
                