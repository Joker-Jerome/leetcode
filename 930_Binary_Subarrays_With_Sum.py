    
# Let P[i] = A[0] + A[1] + ... + A[i-1]. Then P[j+1] - P[i] = A[i] + A[i+1] + ... + A[j], the sum of the subarray [i, j].

# Hence, we are looking for the number of i < j with P[j] - P[i] = S.



class Solution(object):
    def numSubarraysWithSum(self, A, S):
        # check 
        if not A:
            return 0
        
        # init 
        res = 0
        n = len(A)
        running_sum = [0]
        for x in A: running_sum.append(running_sum[-1] + x)
        counter = Counter()
        
        # for loop 
        for x in running_sum:
            res += counter[x]
            # when you hit x + S, that means the difference between these two are the sum
            counter[x + S] += 1
        
        return res
    
