import collections

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        count_dict = collections.Counter(nums)
        return [item for item, _ in count_dict.most_common(k)]