class Solution:
    def minWindow(self, s: str, t: str) -> str:
        # check 
        if not t or not s:
            return ""
        
        # init 
        l, r = 0, 0
        n = len(s)
        res = n + 1, None, None
        dict_t = Counter(t)
        window_count = defaultdict(int)
        required = len(dict_t)
        formed = 0
        
        # for loop 
        for r in range(n):
            c = s[r]
            window_count[c] += 1
            # evaluate the results
            if c in dict_t and window_count[c] == dict_t[c]:
                formed += 1
            # move the left pointer 
            while l <= r and formed == required:
                c = s[l]
                
                # save the result if it's better
                if r - l + 1 < res[0]:
                    res = ( r - l + 1, l, r) 
                # change the dict 
                window_count[c] -= 1
                if c in dict_t and window_count[c] < dict_t[c]:
                    formed -= 1
                # move the left pointer
                l += 1
        
        return "" if res[0] == n + 1 else s[res[1]:(res[2] + 1)]
            
        
