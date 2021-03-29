class Solution:
    def countGoodTriplets(self, arr: List[int], a: int, b: int, c: int) -> int:
        
        # none
        if not arr:
            return []
        
        # init
        res = []
        tmp_list = []

        # function
        def getGoodTriplets(res, tmp_list, arr, idx):
            
            if len(tmp_list) == 3:
                res.append(tmp_list[:])
                return
            for i in range(idx, len(arr)):
                if len(tmp_list) == 1:
                    if abs(tmp_list[0] - arr[i]) > a:
                        continue
                if len(tmp_list) == 2:
                    if abs(tmp_list[1] - arr[i]) > b or abs(tmp_list[0] - arr[i]) > c:
                        continue
                tmp_list.append(arr[i])
                getGoodTriplets(res, tmp_list, arr, i + 1)
                tmp_list.pop(len(tmp_list) - 1)
        
        # run
        getGoodTriplets(res, tmp_list, arr, 0)
        return len(res)