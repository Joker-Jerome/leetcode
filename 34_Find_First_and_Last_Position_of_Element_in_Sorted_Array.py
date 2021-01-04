# Given an array of integers nums sorted in ascending order, find the starting and ending position of a given target value.

# If target is not found in the array, return [-1, -1].

# Follow up: Could you write an algorithm with O(log n) runtime complexity?

 

# Example 1:

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:

# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:

# Input: nums = [], target = 0
# Output: [-1,-1]
 

# Constraints:

# 0 <= nums.length <= 105
# -109 <= nums[i] <= 109
# nums is a non-decreasing array.
# -109 <= target <= 109

class Solution:
    def searchRange(self, nums: List[int], target: int) -> List[int]:
        # check the input
        if not nums or len(nums) == 0:
            return [-1,-1]
        
        # init
        start, end = 0, len(nums) - 1
        
        # main function
        while start + 1 < end:
            mid = (start + end ) // 2
            v_mid = nums[mid]
            # check v_mid 
            if v_mid < target:
                start = mid
            elif v_mid > target:
                end = mid
            elif v_mid == target:
                if nums[start] < target:
                    start += 1
                if nums[end] > target:
                    end -= 1
                if nums[start] == nums[end] == target:
                    break
                
        # check the value
        if nums[start] == target and nums[end] == target:
            return [start, end]
        if nums[start] == target:
            return [start, start]
        if nums[end] == target:
            return [end, end]
        else:
            return [-1, -1]