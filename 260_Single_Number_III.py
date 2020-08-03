class Solution:
    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:
        if len(graph) < 2:
            return []
        res = []
        self.dfs(graph, 0, [0], res)
        return res
    
    def dfs(self, graph, start, tmp_path, res):
        if start == len(graph) - 1:
            res.append(tmp_path[:])
        else:
            for node in graph[start]:
                tmp_path.append(node)
                self.dfs(graph, node, tmp_path, res)
                tmp_path.pop(len(tmp_path) - 1)
        