# O(k+(n-k)lgk) time, min-heap
def findKthLargest4(self, nums, k):
    heap = []
    for num in nums:
        heapq.heappush(heap, num)
    for _ in xrange(len(nums)-k):
        heapq.heappop(heap)
    return heapq.heappop(heap)
    
def findKthLargest(self, nums, k):
    heap = nums[:k]
    heapify(heap)
    for n in nums[k:]:
        heappushpop(heap, n)
    return heap[0]


# https://leetcode.com/problems/kth-largest-element-in-an-array/discuss/60306/Python-different-solutions-with-comments-(bubble-sort-selection-sort-heap-sort-and-quick-sort).
#  O(k) is the time to build min-heap, after this process you have (n-k) elements left, every element needs to be inserted into the min-heap which costs log(k) time for each element, so the total time is O(k+(n-k)log(k)).
# python heap is a min-heap
# The interesting property of a heap is that its smallest element is always the root, heap[0].

# 1, 2, K, 

import heapq

class Solution:
    def findKthLargest(self, nums: List[int], k: int) -> int:
        # check 
        if not nums or not k:
            return False
        
        # init
        heap = []
        
        # main function
        for i in nums[:k]:
            heapq.heappush(heap, i)
        for i in nums[k:]:
            heappushpop(heap, i)
            
        return heap[0]