# 028 strStr
def strStr(self, haystack, needle):
    lsh, lsn = len(haystack), len(needle)
    if lsn == 0:
        return 0
    pos, index = 0, 0
    while index <= lsh - lsn:
        if haystack[index] == needle[0]:
            # slice index:index + lsn
            if haystack[index:index + lsn] == needle:
                return index
        index += 1
    return -1



class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        
        # length check
        lsh, lsn = len(haystack), len(needle)
        if lsn == 0:
            return 0
        
        # loop
        pos, idx = 0, 0
        while idx <= lsh - lsn:
            if haystack[idx] == needle[0]:
                # slice index:index + lsn
                if haystack[idx:idx + lsn] == needle:
                    return idx
            idx += 1
        return -1

# questions:
# 1. empty string output