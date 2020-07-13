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

def bfs_paths(graph, start, goal):
    res_path = []
    queue = [(start, [start])]
    while queue:
        (vertex, path) = queue.pop(0)
        for next in set(graph[vertex]) - set(path):
            if next == goal:
                res_path.append(path + [next])
            else:
                queue.append((next, path + [next]))
    return(res_path)

    
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


def dfs_paths(graph, start, goal):
    path_res = []
    stack = [(start, [start])]
    while stack:
        (vertex, path) = stack.pop()
        for next in set(graph[vertex]) - set(path):
            if next == goal:
                path_res.append(path + [next])
            else:
                stack.append((next, path + [next]))
    return(path_res)  