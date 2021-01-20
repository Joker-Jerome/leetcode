# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

import collections
class Codec:

    def serialize(self, root: TreeNode) -> str:
        """Encodes a tree to a single string.
        """
        # check 
        #if not root:
        #    return []
        res = []
        # preoder 
        def preorder(node):
            if not node:
                return
            res.append(str(node.val))
            preorder(node.left)
            preorder(node.right)
        
        # main function 
        preorder(root)
        return ' '.join(res)
           

    def deserialize(self, data: str) -> TreeNode:
        """Decodes your encoded data to tree.
        """
        # check 
        #if not data:
        #    return []
        vals = collections.deque(int(i) for i in data.split() )
        # build function
        def build(min_val, max_val):
            if vals and vals[0] > min_val and vals[0] < max_val:
                val = vals.popleft()
                node = TreeNode(val)
                node.left = build(min_val, val)
                node.right = build(val, max_val)
                return node
        
        return build(float('-inf'), float('inf'))
      
            
# Your Codec object will be instantiated and called as such:
# Your Codec object will be instantiated and called as such:
# ser = Codec()
# deser = Codec()
# tree = ser.serialize(root)
# ans = deser.deserialize(tree)
# return ans

class Codec:

    def serialize(self, root: TreeNode) -> str:
        """Encodes a tree to a single string. """
        ret = []
        def preorder(root):
            if root:
                ret.append(root.val)
                preorder(root.left)
                preorder(root.right)
        preorder(root)
        return ' '.join(map(str, ret))

    def deserialize(self, data: str) -> TreeNode:
        """Decodes your encoded data to tree. """
        nums = deque(int(n) for n in data.split())
        def build(mmin, mmax):
            if nums and mmin < nums[0] < mmax:
                n = nums.popleft()
                node = TreeNode(n)
                node.left = build(mmin, n)
                node.right = build(n, mmax)
                return node
            
        return build(float('-inf'), float('inf'))