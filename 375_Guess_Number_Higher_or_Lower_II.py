# the state can be transitioned from the cell below or the cell on the left

def getMoneyAmount(self, n):
    need = [[0] * (n+1) for _ in range(n+1)]
    for lo in range(n, 0, -1):
        for hi in range(lo+1, n+1):
            need[lo][hi] = min(x + max(need[lo][x-1], need[x+1][hi]) # the 
                               for x in range(lo, hi))
    return need[1][n]




lo/high 	0 1 2 3 4 5
0
1
2
3           0 0 0 0 4 9
4			0 0 0 0 0 5
5  			0 0 0 0 0 0 		 	



class Solution:
    def getMoneyAmount(self, n: int) -> int:
        # check the input 
        # init
        dp = [[0]*(n+1) for _ in range(n+1)]
        for lo in range(n, 0, -1):
            for hi in range(lo + 1, n + 1):
                dp[lo][hi] = min(x + max(dp[lo][x - 1], dp[x + 1][hi]) for x in range(lo, hi))
                
        return dp[1][n]