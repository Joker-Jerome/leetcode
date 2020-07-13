class Solution:
    def findPeakElement(self, nums: List[int]) -> int:
        start = mid = 0
        end = len(nums) - 1
        while start < end:
        	mid = start + (end - start) // 2
        	# 
        	if nums[mid] < nums[mid + 1]:
                start = mid + 1
            else:
                end = mid
        return start


# remember to consider edge situation 
# when the length of the vector is zero 
# looking for the specific regions low high low / high low high