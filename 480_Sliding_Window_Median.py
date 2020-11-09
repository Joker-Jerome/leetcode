import heapq

class Solution:
    def move(self, h1, h2):
        x, i = heapq.heappop(h1)
        heapq.heappush(h2, (-x, i))
        
    def get_med(self, small, large, k):
    	# which is equivlent to h2 + h1 /2
        return large[0][0] * 1. if k & 1 else (large[0][0] - small[0][0]) / 2.
    
    def medianSlidingWindow(self, nums: List[int], k: int) -> List[float]:
        small, large = [], []
        # first window
        # inside the heap (value, pos)
        for i, x in enumerate(nums[:k]): 
            heapq.heappush(small, (-x,i))
        # balance two heaps
        for _ in range( k - ( k >> 1 )): 
            self.move(small, large)
        ans = [self.get_med(small, large, k)]
        # move the sliding window
        # new item is nums[i + k] and the old item is nums[i]
        for i, x in enumerate(nums[k:]):
        	# add item to the heap
            if x >= large[0][0]:
                heapq.heappush(large, (x, i+k))
                # balance two heaps based on where the nums[i] is
                if nums[i] <= large[0][0]: 
                    self.move(large, small)
            else:
                heapq.heappush(small, (-x, i+k))
                # balance two heaps based on where the nums[i] is
                if nums[i] >= large[0][0]: 
                    self.move(small, large)
            # pop items not for this sliding window
            while small and small[0][1] <= i: 
                heapq.heappop(small)
            while large and large[0][1] <= i: 
                heapq.heappop(large)
            ans.append(self.get_med(small, large, k))
        return ans
