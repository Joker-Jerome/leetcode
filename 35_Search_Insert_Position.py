# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4
# Example 4:

# Input: nums = [1,3,5,6], target = 0
# Output: 0

class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        # check 
        if not nums:
            return -1
        
        # init
        start, end = 0, len(nums) - 1
        
        # binary search
        while start + 1 < end:
            mid = (start + end) // 2
            v_mid = nums[mid]
            
            # check the values
            if v_mid < target:
                start = mid
            elif v_mid == target:
                end = mid
            else:
                end = mid
                
        # check the value 
        if nums[start] == target:
            return start
        if nums[end] == target:
            return end
        if target < nums[start]:
            return 0
        if target > nums[end]:
            return end + 1
        if nums[start] < target < nums[end]:
            return start + 1


class Solution:
    def searchInsert(self, nums, target):
        beg, end = 0, len(nums)
        while beg < end:
            mid = (beg + end)//2
            if nums[mid] >= target:
                end = mid
            else:
                beg = mid + 1
        return beg