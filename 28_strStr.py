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


# KMP
# https://discuss.leetcode.com/topic/3576/accepted-kmp-solution-in-java-for-reference/2
def strStr(self, haystack, needle):
    lsh, lsn = len(haystack), len(needle)
    if lsn == 0:
        return 0
    next = self.makeNext(needle)
    i = j = 0
    while i < lsh:
        if j == -1 or haystack[i] == needle[j]:
            i += 1
            j += 1
            if j == lsn:
                return i - lsn
        if i < lsh and haystack[i] != needle[j]:
            j = next[j]
    return -1

def makeNext(self, needle):
    ls = len(needle)
    next = [0] * ls
    next[0], i, j = -1, 0, -1
    while i < ls - 1:
        if j == -1 or needle[i] == needle[j]:
            next[i + 1] = j + 1
            if needle[i + 1] == needle[j + 1]:
                next[i + 1] = next[j + 1]
            i += 1
            j += 1
        if needle[i] != needle[j]:
            j = next[j]
    return next