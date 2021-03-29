# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num: int) -> int:

# thought process: 
# a variant of binary search 


class Solution:
    def guessNumber(self, n: int) -> int:
        # init
        l = 1
        r = n
        
        # main loop
        while l + 1 < r:
        #for _ in range(10):
            pick_test = (l + r) //2
            res = guess(pick_test)
            if res == 1:
                l = pick_test
            elif res == -1:
                r = pick_test
            elif res == 0:
                return pick_test
        if guess(l) == 0:
            return l
        if guess(r) == 0:
            return r