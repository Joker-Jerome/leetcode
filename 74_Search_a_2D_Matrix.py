# Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer of the previous row.


class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # check input 
        if not matrix:
            return False 
        
        # init
        n_col = len(matrix[0])
        n_row = len(matrix)
        start, end = 0, n_row -1
        
        # main loop (binary search)
        while start + 1 < end:
            mid = (start + end) // 2
            v_mid = matrix[mid][0]
            if v_mid < target:
                start = mid
            elif v_mid > target:
                end = mid
            else:
                return True
                #end = mid
        
        # evaluate the results
        idx_search = 0
        if target < matrix[start][0]: # too small
            return False 
        elif target == matrix[start][0]:
            return True 
        elif target > matrix[start][0] and target < matrix[end][0]:
            idx_search = start
        elif target == matrix[end][0]:
            return True
        elif target > matrix[end][0] and target <= matrix[end][n_col-1]:
            idx_search = end
        else:
            return False 
        
        # second round of search 
        start, end = 0, n_col - 1
        
        # main loop (binary search)
        nums = matrix[idx_search]
        while start + 1 < end:
            mid = (start + end) // 2
            v_mid = nums[mid]
            if v_mid < target:
                start = mid
            elif v_mid > target:
                end = mid
            else:
                return True
                #end = mid
        # evaluate
        if target == nums[start]: # too small
            return True 
        if target == nums[end]:
            return True
        return False


class Solution:
    # @param matrix, a list of lists of integers
    # @param target, an integer
    # @return a boolean
    # 8:21
    def searchMatrix(self, matrix, target):
        if not matrix or target is None:
            return False

        rows, cols = len(matrix), len(matrix[0])
        low, high = 0, rows * cols - 1
        
        while low <= high:
            mid = (low + high) / 2
            num = matrix[mid / cols][mid % cols]

            if num == target:
                return True
            elif num < target:
                low = mid + 1
            else:
                high = mid - 1
        
        return False