class Solution:
    def totalFruit(self, fruits: List[int]) -> int:
        # check
        if not fruits:
            return 0
        
        # init
        l, r = 0, 0
        n = len(fruits)
        res = []
        start_idx = n
        cur_type = None
        
        
        # for loop 
        i = 0
        while i < n:
            window_dict = defaultdict(int)
            tmp_length = 1
            c = fruits[i] 
            window_dict[c] += 1
            start_type = c
            cur_type = c
            for j in range(i + 1, n):
                c = fruits[j]
                # record 
                if c in window_dict:
                    window_dict[c] += 1
                    tmp_length += 1
                    # record the cur_type and mark the flipping point
                    if c != cur_type:
                        cur_type = c
                        if c != start_type:
                            start_idx = j
                elif c not in window_dict and len(window_dict) < 2:
                    window_dict[c] += 1
                    tmp_length += 1
                    # record the cur_type and mark the flipping point
                    cur_type = c
                    start_idx = j
                # reach the maximum basket 
                elif c not in window_dict and len(window_dict) >= 2:
                    break
            res.append(tmp_length)
            i = max(i + 1, start_idx)
        return max(res)
                
