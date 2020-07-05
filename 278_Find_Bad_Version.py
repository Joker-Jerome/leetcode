# The isBadVersion API is already defined for you.
# @param version, an integer
# @return an integer
# def isBadVersion(version):


class Solution:
    def firstBadVersion(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n <= 0:
            return(-1)
        else:
            # init
            start = 1
            end = n
            mid = 1

            # main loop
            while start + 1 < end:
                mid = start + (end - start) //2
                if isBadVersion(start):
                    return(start)
                elif isBadVersion(mid):
                    end = mid
                elif isBadVersion(end):
                    start = mid
            if isBadVersion(start):
                return(start)
            else:
                return(end)

class Solution(object):
    def firstBadVersion(self, n):
        """
        :type n: int
        :rtype: int
        """
        left, right= 1, n
        while left < right:
            mid = (right + left) / 2
            if isBadVersion(mid):
                right = mid
            else:
                left = mid + 1
        return left