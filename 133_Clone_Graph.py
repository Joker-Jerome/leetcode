"""
# Definition for a Node.
class Node:
    def __init__(self, val = 0, neighbors = None):
        self.val = val
        self.neighbors = neighbors if neighbors is not None else []
"""
# DFS
class Solution:
    def cloneGraph(self, node): # DFS recursively
        if not node:
            return node
        m = {node: Node(node.val)}
        self.dfs(node, m)
        return m[node]
    
    def dfs(self, node, m):
        for neigh in node.neighbors:
            if neigh not in m:
                m[neigh] = Node(neigh.val)
                self.dfs(neigh, m)
            m[node].neighbors.append(m[neigh])
 
# BFS            
class Solution:
    def cloneGraph(self, node): # BFS recursively
        if not node:
            return node
        m = {node: Node(node.val)}
        self.bfs(node, m)
        #print(m.items())
        return m[node]
    
    def bfs(self, node, m):
        queue = collections.deque([node])        
        level = [node]
        while queue:
            size = len(level)
            level = []
            for i in range(size):
                tmp_node = queue.popleft()
                print(tmp_node.val)
                for neigh in tmp_node.neighbors:
                    if neigh not in m:
                        m[neigh] = Node(neigh.val)
                        level.append(neigh)
                        queue.append(neigh)
                    m[tmp_node].neighbors.append(m[neigh])