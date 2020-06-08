class Solution(object):
    def subsets(self, nums: List[int]) -> List[List[int]]:
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        nums.sort()
        res = [[]]
        res.append(list(nums))
        for ls in range(1, len(nums)):
            self.get_subsets(res, nums, [], ls, 0)
        return res
    
    def get_subsets(self, res, nums, curr_set, ls, index):
        # recursive
        if ls == 0:
            res.append(list(curr_set))
        elif index < len(nums):
            curr_set.append(nums[index])
            self.get_subsets(res, nums, curr_set, ls - 1, index + 1)
            curr_set.pop()
            self.get_subsets(res, nums, curr_set, ls, index + 1)

class Solution(object):
    def subsets(self, nums):
            # Sort and iteratively generate n subset with n-1 subset, O(n^2) and O(2^n)
            nums.sort()
            res = [[]]
            for index in range(len(nums)):
                size = len(res)
                # use existing subsets to generate new subsets
                for j in range(size):
                    curr = list(res[j])
                    curr.append(nums[index])
                    res.append(curr)
            return res

import copy

class Solution(object):
    def subsets(self, nums: List[int]) -> List[List[int]]:
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        res = [[]]
        curr_set = []
        self.get_subsets(res, nums, curr_set, 0)
        return(res)
    
    def get_subsets(self, res, nums, curr_set, index):
        # recursive
        if index < len(nums):
            for i in range(index, len(nums)):
                curr_set.append(nums[i])
                print(curr_set)
                res.append(copy.deepcopy(curr_set))
                self.get_subsets(res, nums, curr_set, i + 1)
                curr_set.pop(len(curr_set) - 1)
            
if __name__ == "__main__":
    s = Solution()
    print(s.subsets([1,2,3]))


