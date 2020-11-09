## very good explanation 
## https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/discuss/75924/Most-consistent-ways-of-dealing-with-the-series-of-stock-problems

# dp(x, 0) rest on that day
# dp(x, 1) buy on that day
# dp(x, 2) sell on that day 


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # check 
        if not prices:
            return 0

        # init 
        dp = [[0 for _ in range(3)] for _ in range(len(prices))]
        
        dp[0][0] = 0				# rest
        dp[0][1] = -prices[0]		# buy
        dp[0][2] = float('-inf')	# sell
        bought = dp[0][1]			# remaining value when you purchased the stock
        
        n = len(prices)
        for i in range(1, n):
            dp[i][0] = max([dp[i-1][0], dp[i-1][2], dp[i-1][1]])
            dp[i][1] = dp[i-1][0] - prices[i]
            dp[i][2] = bought + prices[i]
            
            bought = max(bought, dp[i][1])	# update the remaining value
            #print("buy", bought)
            
        #print(dp)
            
        return max(dp[n-1]) # nth day


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # check
        if prices == None or len(prices) == 0:
            return 0 
        
        # init 
        n = len(prices)
        dp = [[0 for _ in range(3)] for _ in range(n)]
        dp[0][0] = 0            # rest
        dp[0][1] = -prices[0]   # buy
        dp[0][2] = float(-inf)  # sell
        bought = dp[0][1]
        
        # running
        for i in range(1, n):
            dp[i][0] = max(dp[i - 1][0], dp[i - 1][1], dp[i - 1][2])
            dp[i][1] = max(dp[i - 1][0] - prices[i], dp[i - 1][1] - prices[i])
            dp[i][2] = bought + prices[i]
            bought = max(bought, dp[i][1])
            
        return(max(dp[n - 1]))