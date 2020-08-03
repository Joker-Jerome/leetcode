# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def countPairs(self, root: TreeNode, distance: int) -> int:
        count = 0
    
        def dfs(node):
            nonlocal count
            # none
            if not node:
                return []

            # leaf node
            if not node.left and not node.right:
                return [0]

            # recursive ops
            left = [ x + 1 for x in dfs(node.left)]
            right = [ x + 1 for x in dfs(node.right)]

            # find the good pairs
            for l in left:
                for r in right:
                    if l + r <= distance:
                        count += 1
            return left + right
        
        dfs(root)
        return count