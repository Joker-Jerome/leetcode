class Solution:
    def findMin(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        # set left and right bounds
        left, right = 0, len(nums) - 1    
        # left and right both converge to the minimum index;
        # DO NOT use left <= right because that would loop forever
        while left < right:            
            mid = left + (right - left) // 2          
            if nums[mid] > nums[right]:
                left = mid + 1
            else:
                if nums[mid] != nums[right]:
                    right = mid 
                else:
                    right -= 1
        return nums[left]