# bfs 

import collections

def bfs(graph, root):
    # init
    visited = set()
    queue = collections.deque([root])
    visited.add(root)

    while queue:

        # Dequeue a vertex from queue
        vertex = queue.popleft()

        # If not visited, mark it as visited, and enqueue it
        for neighbour in graph[vertex]:
            if neighbour not in visited:
                visited.add(neighbour)
                queue.append(neighbour)


# dfs

def dfs(graph, start):
    # init
    visited = set()
    stack = [start]
    
    while stack:
        
        # pop a vertex from stack
        vertex = stack.pop()
        if vertex not in visited:
            visited.add(vertex)
            stack.extend(set(graph[vertex]) - visited)
    return visited