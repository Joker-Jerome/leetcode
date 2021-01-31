# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
class Solution():
    def distanceK(self, root, target, K):
        conn = collections.defaultdict(list)
        def connect(parent, child):
            # both parent and child are not empty
            if parent and child:
                # building an undirected graph representation, assign the
                # child value for the parent as the key and vice versa
                conn[parent.val].append(child.val)
                conn[child.val].append(parent.val)
            # in-order traversal
            if child.left: connect(child, child.left)
            if child.right: connect(child, child.right)
        # the initial parent node of the root is None
        connect(None, root)
        # start the breadth-first search from the target, hence the starting level is 0
        bfs = [target.val]
        seen = set(bfs)
        # all nodes at (k-1)th level must also be K steps away from the target node
        for i in range(K):
            # expand the list comprehension to strip away the complexity
            new_level = []
            for q_node_val in bfs:
                for connected_node_val in conn[q_node_val]:
                    if connected_node_val not in seen:
                        new_level.append(connected_node_val)
            bfs = new_level
            # add all the values in bfs into seen
            seen |= set(bfs)
        return bfs



import collections
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
class Solution():
    def distanceK(self, root, target, K):
        # check the input
        if not root or not target:
            return []
        
        # init
        graph = collections.defaultdict(list)
        
        
        # dfs function 
        def conn(parent, child):
            # in-order travasel
            if parent and child:
                graph[parent.val].append(child.val)
                graph[child.val].append(parent.val)  
            
            # child trees
            if child.left: conn(child, child.left)
            if child.right: conn(child, child.right)
                
        # run the dfs and build the graph
        conn(None, root)
        
        # bfs for k steps
        visited = set()
        queue = collections.deque()
        tmp_queue = collections.deque()
        res = []
        
        # main loop
        queue.append(target.val) 
        tmp_queue.append(target.val) 
        visited.add(target.val)
        
        for i in range(K):
            queue = tmp_queue
            tmp_queue = collections.deque()
            while queue:
                cur_node = queue.popleft()
                #print(cur_node)
                for neighbor in graph[cur_node]:
                    if neighbor not in visited:
                        #print(neighbor)
                        tmp_queue.append(neighbor)
                        visited.add(neighbor)
                    
        return list(tmp_queue)
        
                    
            
