# DFS
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        res = []
        tmp_list = []
        pos = 0
        nums = list(range(1, n + 1))
        self.get_combination(res, nums, tmp_list, k, pos)
        return(res)
        
    def get_combination(self, res, nums, tmp_list, k, pos):
        if len(tmp_list) == k:
            res.append(tmp_list[:])
        else:
            for i in range(pos, len(nums)):
                tmp_list.append(nums[i])
                left_nums = nums[:i] + nums[i + 1:]
                self.get_combination(res, left_nums, tmp_list, k, i)
                tmp_list.pop()

# cheating 
from itertools import combinations

class Solution:
    def combine(self, n, k):
        res = list(combinations(list(range(1, n+1)), k))
        return(res)
    

# recursive II 
class Solution:
    def combine(self, n, k):
        res = []
        if k == 0:
            return [[]]
        for i in range(k, n+1):
            for pre in self.combine(i-1, k-1):
                res.append(pre + [i])  
        return(res)
    

if __name__ == "__main__":
    s = Solution()
    print(s.combine(3, 2))