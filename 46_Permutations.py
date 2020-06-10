# DFS
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []
        curr_set = []
        self.get_permute(res, nums, curr_set)
        return(res)
        
    def get_permute(self, res, nums, curr_set):
        # when the nums is null 
        if not nums:
            res.append(curr_set)
        for i in range(len(nums)):
            self.get_permute(res, nums[:i] + nums[i + 1:], curr_set + [nums[i]])
        


# inserting 
class Solution:
    def permute(self, nums):
        perms = [[]]   
        for n in nums:
            new_perms = []
            for perm in perms:
                for i in range(len(perm)+1):   
                    new_perms.append(perm[:i] + [n] + perm[i:])         ###insert n
            perms = new_perms
        return perms