# iteratively
class Solution:
    def preorderTraversal(self, root: TreeNode) -> List[int]:
	    stack, res = [root], []
	    while stack:
	        node = stack.pop()
	        if node:
	            res.append(node.val)
	            stack.append(node.right)
	            stack.append(node.left)
	    return res


# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# recursively 
class Solution:
    def preorderTraversal(self, root: TreeNode) -> List[int]:
        res = []
        self.dfs(root, res)
        return res
        
    def dfs(self, root, res):
        if root:
            res.append(root.val)
            self.dfs(root.left, res)
            self.dfs(root.right, res)

# divide and conquer
class Solution:
	def preorderTraversal(self, root: TreeNode) -> List[int]:
		res = []
		if root == None:
			return 

		# divide 
		left = self.preorderTraversal(root.left)
		right = self.preorderTraversal(root.right)

		# conquer
		if root:
			res.append(root.val)
		if left:
			res.extend(left)
		if right:
			res.extend(right)
		return res
