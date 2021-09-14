class Solution:
    # 1
    def reverse(self, x: int) -> int:
        # sign
        if x > 0:
            sign = 1
            x_str = str(x)
        else:
            sign = -1
            x_str = str(-x)
        # reverse 
        x = int(x_str[::-1]) * sign
        # range
        if x < -2**31 or x > 2**31 - 1:
            return 0
        return x
    # 2
    def reverse(self, x: int) -> int:
        # sign
        if x > 0:
            sign = 1
        else:
            sign = -1
            x = -x
        # reverse 
        # init 
        res = 0
        while x != 0:
            pop = x % 10
            x //= 10
            res = res * 10 + pop
            # range
            if res * sign < -2**31 or res * sign > 2**31 - 1:
                return 0
        
        return res * sign
    
    
    
        
