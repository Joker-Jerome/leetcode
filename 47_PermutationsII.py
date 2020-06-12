# DFS
class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        res = []
        curr_set = []
        self.get_permute(res, nums, curr_set)
        return(res)
        
    def get_permute(self, res, nums, curr_set):
        if not nums:
            res.append(curr_set)
        for i in range(len(nums)):
            self.get_permute(res, nums[:i] + nums[i + 1:], curr_set + [nums[i]])
        

# cheating
class Solution:
    def permuteUnique(self, nums: List[int]) -> List[List[int]]:
        # cheating 
        return list(set(itertools.permutations(nums)))

# back tracing
class Solution:
    def permuteUnique(self, nums: List[int]) -> List[List[int]]:
        # sorting for excluding the duplicates
        nums.sort()
        res = []
        def _backtrace(nums, pre_list):
            if len(nums) <= 0:
                res.append(pre_list)
            else:
                for i in range(len(nums)):
                    # if nums[i] and nums[i-1] are the same, that means this permutation has appeared before
                    if i > 0 and nums[i] == nums[i-1]:
                        continue
                    p_list = pre_list.copy()
                    p_list.append(nums[i])
                    left_nums = nums.copy()
                    left_nums.pop(i)
                    _backtrace(left_nums, p_list)
        _backtrace(nums, [])
        return res