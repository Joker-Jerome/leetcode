class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        # check 
        if prices == None or len(prices) == 0:
            return 0
        
        # init
        n = len(prices)
        min_price = float(inf)
        max_profit = 0
        for i in range(n):
            if prices[i] < min_price:
                min_price = prices[i]
            tmp_diff = prices[i] - min_price
            if tmp_diff > max_profit:
                max_profit = tmp_diff
        
        return(max_profit)
            