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

# In case of simple Binary Search, we work on a sorted sequence of numbers and try to find out the required number by reducing the search space at every step. In this case, we use a modification of this simple Binary Search to our advantage. We start off by finding the middle element, midmid from the given numsnums array. If this element happens to be lying in a descending sequence of numbers. or a local falling slope(found by comparing nums[i]nums[i] to its right neighbour), it means that the peak will always lie towards the left of this element. Thus, we reduce the search space to the left of midmid(including itself) and perform the same process on left subarray.

# If the middle element, midmid lies in an ascending sequence of numbers, or a rising slope(found by comparing nums[i]nums[i] to its right neighbour), it obviously implies that the peak lies towards the right of this element. Thus, we reduce the search space to the right of midmid and perform the same process on the right subarray.

class Solution:
    def findPeakElement(self, nums: List[int]) -> int:
        # check 
        if not nums:
            return False 
        
        # init 
        start, end = 0, len(nums) - 1
        
        # main loop 
        while start + 1 < end:
            mid = (start + end ) // 2
            val_mid = nums[mid]
            if val_mid < nums[mid + 1]:
                start = mid
            else: 
                end = mid 
        
        # evaluate
        if nums[start] > nums[end]:
            return start
        else:
            return end

