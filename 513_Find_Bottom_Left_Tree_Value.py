class Solution:
    def findBottomLeftValue(self, root: TreeNode) -> int:
        # check input
        if not root:
            return []
        
        # init 
        queue = collections.deque([root])
        res = [[root.val]]
        level = [root.val]
        distance = collections.defaultdict(int)
        distance[root] = 0
        
        # main loop
        while queue:
            size = len(level)
            level = []
            for i in range(size):
                cur_node = queue.popleft()
                if cur_node.left:
                    if cur_node.left not in distance:
                        distance[cur_node.left] = distance[cur_node] + 1
                        level.append(cur_node.left.val)
                        queue.append(cur_node.left)
                if cur_node.right:
                    if cur_node.right not in distance:
                        distance[cur_node.right] = distance[cur_node] + 1
                        level.append(cur_node.right.val)
                        queue.append(cur_node.right)
            if len(level) > 0:
                res.append(level)
        # output (the last result but the first item of that list)
        output = res[-1][0]
        return output

    # right to left trick (so smart) go thorught the tree from right to left 
    def findBottomLeftValue(self, root):
        queue = [root]
        for node in queue:
            queue += filter(None, (node.right, node.left))
        return node.val