# Write an efficient algorithm that searches for a target value in an m x n integer matrix. The matrix has the following properties:

# Integers in each row are sorted in ascending from left to right.
# Integers in each column are sorted in ascending from top to bottom.

class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # check 
        if not matrix or not target:
            return False
        
        # init 
        n_col = len(matrix[0])
        n_row = len(matrix)
        r, c = n_row - 1, 0
        
        # main loop
        while r >= 0 and c < n_col:
            tmp_val = matrix[r][c]
            if target > tmp_val:
                c += 1
            elif target < tmp_val:
                r -= 1
            else:
                return True
        return False 