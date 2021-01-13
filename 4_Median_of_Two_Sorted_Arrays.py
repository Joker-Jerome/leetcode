# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

# Follow up: The overall run time complexity should be O(log (m+n)).

def findMedianSortedArrays(self, A, B):
    l = len(A) + len(B)
    if l % 2 == 1:
        return self.kth(A, B, l // 2)
    else:
        return (self.kth(A, B, l // 2) + self.kth(A, B, l // 2 - 1)) / 2.   
    
def kth(self, a, b, k):
    if not a:
        return b[k]
    if not b:
        return a[k]
    ia, ib = len(a) // 2 , len(b) // 2
    ma, mb = a[ia], b[ib]
    
    # when k is bigger than the sum of a and b's median indices 
    if ia + ib < k:
        # if a's median is bigger than b's, b's first half doesn't include k
        if ma > mb:
            return self.kth(a, b[ib + 1:], k - ib - 1)
        else:
            return self.kth(a[ia + 1:], b, k - ia - 1)
    # when k is smaller than the sum of a and b's indices
    else:
        # if a's median is bigger than b's, a's second half doesn't include k
        if ma > mb:
            return self.kth(a[:ia], b, k)
        else:
            return self.kth(a, b[:ib], k)


# self 
import heapq
class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        # check
        
        # init 
        m = len(nums1)
        n = len(nums2)
        l = m + n
        
        # main loop
        if l % 2 == 1:
            print("Odd!")
            return self.findKlargest(nums1, nums2, l//2)
        else:
            print("Even!")
            return (self.findKlargest(nums1, nums2, l//2) + self.findKlargest(nums1, nums2, l//2 - 1) )/2
        
    def findKlargest(self, a, b, k):
        if len(a) == 0:
            print("wow")
            return b[k]
        if len(b) == 0:
            return a[k]
        
        
        len_a, len_b = len(a), len(b)
        ia, ib = len_a//2, len_b//2
        ma, mb = a[ia], b[ib]
        
        # k > sum of two indices, this means that the small half can be removed 
        if k > ia + ib:
            if ma > mb:
                return(self.findKlargest(a, b[ib + 1:], k - (ib + 1)))
            else:
                return(self.findKlargest(a[ia + 1:], b, k - (ia + 1)))
        # k < sum of two indices, this means that the bigger half can be removed 
        else:
            if ma > mb:
                return(self.findKlargest(a[:ia], b, k))
            else:
                return(self.findKlargest(a, b[:ib], k))