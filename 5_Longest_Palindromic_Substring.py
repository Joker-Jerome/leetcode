class Solution:
    def longestPalindrome(self, s:str) -> str:
        # init 
        ans = ''
        max_len = 0
        n = len(s)
        
        # dp init 
        dp = [[0] * n for _ in range(n)]
        
        # diagnal
        for i in range(n):
            dp[i][i] = True
            max_len = 1
            ans = s[i]
        
        # dp[i, i+1]
        for i in range(n-1):
            if s[i] == s[i+1]:
                dp[i][i+1] = True
                max_len = 2
                ans = s[i:i+2]
        
        # upper right triangle 
        for j in range(n):
            for i in range(j - 1):
                if s[i] == s[j] and dp[i+1][j-1]:
                    dp[i][j] = True
                    if max_len < j - i + 1:
                        max_len = j - i + 1
                        ans = s[i:j+1]
                        
        return ans
    
    
    # (1) diagnal 
    # (2) dp[i, i+1]
    # (3) upper right triangle 