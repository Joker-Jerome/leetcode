import collections
class Solution:
    def countSubTrees(self, n: int, edges: List[List[int]], labels: str) -> List[int]:
        # check input 
        if not n or not edges:
            return []
        
        # init 
        
        res = [0] * n
        tree = collections.defaultdict(list)
        
        # tree 
        for a, b in edges:
            tree[a].append(b)
            tree[b].append(a)
        
        
        def dfs(child, parent):
            counter = collections.Counter()
            # remove the parent
            for node in tree[child]:
                if node != parent:
                    counter += dfs(node, child)
            counter[labels[child]] += 1
            res[child] = counter[labels[child]]
            return counter
        
        # main function
        dfs(0, None)
        return res
        
