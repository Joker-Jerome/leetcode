class Solution:
	# brute force 
    def maxArea(self, height: List[int]) -> int:
        max_value = 0
        for i in range(len(height)):
            for j in range(i + 1, len(height)):
                tmp_area = min(height[i], height[j]) * (j - i)
                if tmp_area > max_value:
                    max_value = tmp_area
        return(max_value)


class Solution(object):
	# two pointers
    def maxArea(self, height):
        # brute force
        ls = len(height)
        left, right = 0, ls - 1
        result = 0
        while left < right:
            result = max(min(height[left], height[right]) * (right - left), result)
            if height[left] > height[right]:
                right -= 1
            else:
                left += 1
        return result

class Solution(object):
	# two pointers
    def maxArea(self, height):
        # brute force
        ls = len(height)
        left, right = 0, ls - 1
        result = 0
        while left < right:
            tmp_area = min(height[left], height[right]) * (right - left)
            # assign
            if result < tmp_area:
                result = tmp_area
            # move the pointers
            if height[left] > height[right]:
                right -= 1
            else:
                left += 1
        return result


  best_idx <- which.max(cv.performance[1, ])
  message("Number of SNP: ", nrow(weight_file))
  message("Number of NA coefficient: ", sum(is.na(weight_file[, best_idx])))

  if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
    # 2nd
    best_idx <- which(cv.performance[1, ] == nth(cv.performance[1, ], 2))

    if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
      # 3rd
      best_idx <- which(cv.performance[1, ] == nth(cv.performance[1, ], 3))
      if (sum(is.na(weight_file[, best_idx])) == nrow(weight_file) | sum(weight_file[, best_idx] == 0, na.rm = T) == nrow(weight_file)) {
        return(NA)
      } else {
        return(best_idx)
      }
    } else {
      return(best_idx)
    }