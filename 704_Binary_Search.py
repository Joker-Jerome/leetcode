class Solution:
    def search(self, nums: List[int], target: int) -> int:
        left, right = 0, len(nums) - 1
        if not nums:
            return -1
        
        while left + 1 < right:
            mid = left + (right - left) // 2
            if nums[mid] == target:
                    return mid
            if nums[left] < nums[mid]:
                if nums[left] <= target <= nums[mid]:
                    right = mid 
                else:
                    left = mid
            else:
                if nums[mid] <= target <= nums[right]:
                    left = mid
                else:
                    right = mid
        if nums[left] == target:
            return left
        
        if nums[right] == target:
            return right
        
        return -1
        
                