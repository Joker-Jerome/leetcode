# Given a n-ary tree, find its maximum depth.

# The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

# Nary-Tree input serialization is represented in their level order traversal, each group of children is separated by the null value (See examples).


"""
# Definition for a Node.
class Node:
    def __init__(self, val=None, children=None):
        self.val = val
        self.children = children
"""

class Solution:
    def maxDepth(self, root: 'Node') -> int:
        # check 
        if not root:
            return 0
        if len(root.children) == 0:
            return 1
        
        # init
        depth_list = []
        
        # divide and conquer
        for node in root.children:
            depth_list.append(self.maxDepth(node))
        
        return (max(depth_list) + 1)