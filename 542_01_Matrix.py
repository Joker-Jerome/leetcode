class Solution:
    def updateMatrix(self, matrix):
        # diget
        n = len(matrix)
        p = len(matrix[0])
        
        # helper function
        def neighbor(r, c):
            dirs = [(r + 1, c), (r - 1, c), (r, c + 1), (r, c - 1)]
            for rn, cn in dirs:
                if 0 <= rn < n and 0 <= cn < p:
                    yield rn, cn
                    
                    
        # bfs init
        queue = collections.deque(((r, c), 0) for c in range(p) for r in range(n) if matrix[r][c] == 0)
        distance = collections.defaultdict(int)
        ans = [ [0] * p  for _ in range(n) ]
        level = []
        
        
        # import all the nodes
        items = [((r, c), 0) for c in range(p) for r in range(n) if matrix[r][c] == 0 ]
        for i in items:
            distance[i[0]] = 0
            level.append(i[0])
        
        
        # loop
        while queue:
            size = len(level)
            level = []
            for i in range(size):
                (r, c), depth = queue.popleft()
                ans[r][c] = depth
                for neighbor_i in neighbor(r, c):
                    if neighbor_i not in distance:
                        distance[neighbor_i] = depth + 1
                        queue.append((neighbor_i, depth + 1)) 
                        level.append(neighbor_i)
        
        return ans
        
                
        
        
        
                

