# first try
class Solution:
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        res = []
        for i in range(len(nums)):
            tmp_list = nums[:i] + nums[i + 1:]
            eval_res = self.twoSum(tmp_list, 0 - nums[i])
            if len(eval_res) > 0:
                for pair in eval_res: 
                    res.append([nums[i]] + pair)
        return([list(x) for x in set(tuple(sorted(x)) for x in res)])
                
    
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        res = []
        dict = {}
        for i in range(len(nums)):
            if nums[i] in dict:
                res.append([nums[dict[nums[i]]], nums[i]])
            else:
                dict[target-nums[i]] = i
        return(res)

    def threeSum(self, nums):
            """
                :type nums: List[int]
                :rtype: List[List[int]]
            """
            # using multiple 2 sum
            nums.sort()
            result, visited = set(), {}
            for i in xrange(len(nums) - 2):
                table, target = {}, -nums[i]
                if nums[i] not in visited:
                    for j in xrange(i + 1, len(nums)):
                        if nums[j] not in table:
                            table[target - nums[j]] = j
                        else:
                            result.add((nums[i], target - nums[j], nums[j]))
                    visited[nums[i]] = 1
            return list(result)

    def threeSum(self, nums):
            """
                :type nums: List[int]
                :rtype: List[List[int]]
            """
            # using multiple 2 sum
            if len(nums) < 3:
                return([])
            
            res = []
            nums.sort()
            
            for i in range(len(nums) - 2 ):
                
                # skipping the first element if it has been calculated
                if i > 0 and nums[i] == nums[ i - 1 ]:
                    continue
                    
                left = i + 1
                right = len(nums) - 1
                while(left < right):
                    curr = nums[i] + nums[left] + nums[right] 
                    if curr == 0:
                        res.append([nums[i], nums[left], nums[right]])
                        
                        # skipping the same eletment
                        while  left < right and nums[left] == nums[left + 1]:
                            left += 1
                        while   left < right and nums[right] == nums[right - 1]:
                            right -= 1
                        
                        # move the pointers
                        left += 1
                        right -= 1
                    
                    # move the pointers
                    elif curr < 0:
                        left += 1
                    else:
                        right -= 1
            return(res)
                    
                    