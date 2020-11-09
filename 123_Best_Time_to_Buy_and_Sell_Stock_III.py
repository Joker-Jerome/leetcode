class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # check
        if prices == None or len(prices) == 0:
            return 0
        
        # init 
        n = len(prices)
        dp = [ [ 0 for _ in range(n)] for _ in range(3) ]
        
        
        # running
        for k in range(1, 3):
            min_val = prices[0]
            for i in range(1, n): 
                min_val = min([min_val, prices[i] - dp[k-1][i-1]])
                dp[k][i] = max([dp[k][i-1], prices[i] - min_val])
                
        return dp[2][n - 1]