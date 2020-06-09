import copy

class Solution(object):
    
    def __init__(self):
        self.res = [[]]
        
    def subsetsWithDup(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        curr_set = []
        nums = sorted(nums)
        self.get_subsets(self.res, nums, curr_set, 0)
        return(self.res)
    
    def get_subsets(self, res, nums, curr_set, pos):
        # recursive
        if pos < len(nums):
            for i in range(pos, len(nums)):
                if i != pos and nums[i] == nums[i - 1]:
                    continue
                curr_set.append(nums[i])
                print(curr_set)
                res.append(copy.deepcopy(curr_set))
                self.get_subsets(res, nums, curr_set, i + 1)
                curr_set.pop(len(curr_set) - 1)
            
if __name__ == "__main__":
    s = Solution()
    print(s.subsetsWithDup([1,2,3]))



class Solution(object):
    def subsetsWithDup(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        res = [[]]
        curr_set = []
        nums = sorted(nums)
        self.get_subsets(res, nums, curr_set, 0)
        return(res)
    
    def get_subsets(self, res, nums, curr_set, pos):
        # recursive
        if pos < len(nums):
            for i in range(pos, len(nums)):
                if i != pos and nums[i] == nums[i - 1]:
                    continue
                curr_set.append(nums[i])
                print(curr_set)
                res.append(curr_set[:])
                self.get_subsets(res, nums, curr_set, i + 1)
                curr_set.pop(len(curr_set) - 1)
            
if __name__ == "__main__":
    s = Solution()
    print(s.subsetsWithDup([1,2,3]))