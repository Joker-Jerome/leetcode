# DFS I (fastest)
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []
        curr_set = []
        self.get_permute(res, nums, curr_set)
        return(res)
        
    def get_permute(self, res, nums, curr_set):
        if not nums:
            res.append(curr_set)
        else:
            for i in range(len(nums)):
                self.get_permute(res, nums[:i] + nums[i + 1:], curr_set + [nums[i]])

# DFS II 
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []
        curr_set = []
        self.get_permute(res, nums, tmp_list)
        return(res)
        
    def get_permute(self, res, nums, tmp_list):
        if len(tmp_list) == len(nums):
            res.append(tmp_list)
        else:
            for i in range(len(nums)):
                if nums[i] in tmp_list:
                    continue
                tmp_list.append(nums[i])
                self.get_permute(res, nums, tmp_list)
                tmp_list.pop(len(tmp_list) - 1)
        
        

# inserting 
class Solution:
    def permute(self, nums):
        perms = [[]]   
        for n in nums:
            new_perms = []
            for perm in perms:
                for i in range(len(perm)+1):   
                    # insert n
                    new_perms.append(perm[:i] + [n] + perm[i:])         
            perms = new_perms
        return perms

