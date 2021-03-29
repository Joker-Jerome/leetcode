# thoughts: 
# 1. dp structure dp[stone_pos] = set(potential step to reach this pos)
# 2. iteration: only use the k - 1, k, k + 1 to test the next pos

class Solution:
    def canCross(self, stones: List[int]) -> bool:
        # check 
        # init
        n = len(stones)
        dp = {stone:set() for stone in stones}
        dp[0].add(0)
        
        # main dp 
        for i in range(n):
            for k in dp[stones[i]]:
                for step in range(k - 1, k + 2):
                    next_pos = stones[i] + step
                    if step and next_pos in dp:
                        dp[next_pos].add(step)
        
        # final output
        res = len(dp[stones[n - 1]]) > 0
        return res


class Solution:
    def canCross(self, stones):
        """
        :type stones: List[int]
        :rtype: bool
        """
        def dfs(i, step, first = False):
            if step == 0 or i >= len(stones):
                return False
            if i == len(stones)-1:
                return True
            if (i, step) in rec:
                return rec[(i, step)]
            if first:
                steps = {step}
            else:
                steps = {step-1, step, step+1}
            for s in steps:
                if stones[i]+s in dic:
                    if dfs(dic[stones[i]+s], s):
                        rec[(i, step)] = True
                        return True
            rec[(i, step)] = False
            return False
        
        rec = {}
        dic = {stones[i]:i for i in range(len(stones))} 
        return dfs(0, 1, True)