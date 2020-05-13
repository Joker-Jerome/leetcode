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