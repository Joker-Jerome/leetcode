class Solution:
    def findAnagrams(self, s: str, p: str) -> List[int]:
        # check 
        if not s or not p:
            return []
        
        # init 
        l, r = 0, 0 
        n = len(s)
        res = []
        dict_p = Counter(p)
        window_count = defaultdict(int)
        form = 0
        required = len(dict_p)
        n_p = len(p)
        
        # for loop 
        for r in range(n):
            c = s[r]
            window_count[c] += 1
            
            # add form 
            if c in dict_p and window_count[c] == dict_p[c]:
                form += 1
            
            # evaluate the res
            if form == required:
                res.append(l)
            
            # move the left pointer and change the status of the dict
            if r >= n_p - 1:
                c = s[l]
                if c in dict_p and window_count[c] == dict_p[c]:
                    form -= 1
                window_count[c] -= 1
                l += 1
                
                
        return res
            
