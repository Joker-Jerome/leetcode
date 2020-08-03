class Solution:
    def numOfSubarrays(self, arr):
        # check
        if not arr:
            return []
        
        # init
        res = 0
        odd = 0
        even = 0
        
        # the main loop
        for i in range(len(arr)):
            # arr[i] is even, all the 
            if (arr[i] % 2 == 0):
                even += 1
            # arr[i] is odd, 
            else:
                prev_even = even
                even = odd  
                odd =  prev_even + 1
                
            res += odd
        
        # return
        return res % (10**9 + 7)

# multiple operations finished in one line
class Solution:
    def numOfSubarrays(self, arr: List[int]) -> int:
        ans = 0
        even = 0
        odd = 0
        for v in arr:
            if v % 2 == 0:
                even, odd = even + 1, odd
            else:
                even, odd = odd, even + 1
            ans = (ans + odd) % 1000000007
        return ans % mod