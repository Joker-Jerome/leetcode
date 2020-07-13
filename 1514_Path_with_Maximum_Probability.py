from heapq import heappush, heappop
from math import log2

class Solution:
    def maxProbability(self, n: int, edges: List[List[int]], succProb: List[float], start: int, end: int) -> float:
        AdjList = [set() for _ in range(n)]
        for (u, v), p in zip(edges, succProb):
            AdjList[u].add((v, log2(1/p)))
            AdjList[v].add((u, log2(1/p)))
        dist = [float('inf') for _ in range(n)]
        dist[start] = 0
        h = [(0, start)]
        while h:
            d, u = heappop(h)
            if d == dist[u]:
                for (v, p) in AdjList[u]:
                    if dist[u] + p < dist[v]:
                        dist[v] = dist[u] + p
                        heappush(h, (dist[v], v))
        return 1 / (2 ** dist[end])


class Solution:
    def maxProbability(self, n: int, edges: List[List[int]], succProb: List[float], start: int, end: int) -> float:
        # init prob and graph
        p, g = [0.0] * n, defaultdict(list)

        # build the graph 
        for index, (a, b) in enumerate(edges):
            g[a].append((b, index))
            g[b].append((a, index))
        p[start] = 1.0
        heap = [(-p[start], start)]    
        while heap:
            prob, cur = heapq.heappop(heap)
            if cur == end:
                return -prob
            for neighbor, index in g.get(cur, []):
                if -prob * succProb[index] > p[neighbor]:
                    p[neighbor] = -prob * succProb[index]
                    heapq.heappush(heap, (-p[neighbor], neighbor))
        return 0.0

class Solution:
    def maxProbability(self, n: int, edges: List[List[int]], succProb: List[float], start: int, end: int) -> float:
        # init prob and graph
        p = [0.0] * n
        g = defaultdict(list)

        # build the graph 
        for idx, (a, b) in enumerate(edges):
            g[a].append((b, succProb[idx]))
            g[b].append((a, succProb[idx]))
        
        # dijkstra  
        p[start] = 1
        heap = [(-1.0, start)]
        
        while heap:
            prob, cur = heapq.heappop(heap)
            if cur == end:
                return(-prob)
            for node, prob_edge in g.get(cur, []):
                tmp_prob = prob * prob_edge
                if  -tmp_prob > p[node]:
                    p[node] = -tmp_prob
                    heapq.heappush(heap, (tmp_prob, node))
        return 0.0