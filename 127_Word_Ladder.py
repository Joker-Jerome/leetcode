from collections import deque


class Solution(object):
    def ladderLength(self, beginWord, endWord, wordList):
        
        def construct_dict(word_list):
            d = {}
            for word in word_list:
                for i in range(len(word)):
                    s = word[:i] + "_" + word[i+1:]
                    d[s] = d.get(s, []) + [word]
            return d
            
        def bfs_words(begin, end, dict_words):
            queue, visited = deque([(begin, 1)]), set()
            while queue:
                word, steps = queue.popleft()
                if word not in visited:
                    visited.add(word)
                    # check if the the ultimate goal is met
                    if word == end:
                        return steps
                    for i in range(len(word)):
                        s = word[:i] + "_" + word[i+1:]
                        neigh_words = dict_words.get(s, [])
                        for neigh in neigh_words:
                            if neigh not in visited:
                                queue.append((neigh, steps + 1))
            return 0
        
        d = construct_dict(set(wordList) | set([beginWord, endWord]))
        return bfs_words(beginWord, endWord, d)
    
    # note: basically you want build a dict where the subword is the key and the word is the value
    
    # dict = {'sub_word' = ['whole_word']}
    
    # and you need to search for all the potential words that share the same sub word structure
    
    # the distance is stored in the item


    from collections import deque

# the second version is for the accepted answer where the end word should be in the word list


class Solution(object):
    def ladderLength(self, beginWord, endWord, wordList):
        
        def construct_dict(word_list):
            d = {}
            for word in word_list:
                for i in range(len(word)):
                    s = word[:i] + "_" + word[i+1:]
                    d[s] = d.get(s, []) + [word]
            return d
            
        def bfs_words(begin, end, dict_words):
            queue, visited = deque([(begin, 1)]), set()
            while queue:
                word, steps = queue.popleft()
                if word not in visited:
                    visited.add(word)
                    # check if the the ultimate goal is met
                    if word == end:
                        return steps
                    for i in range(len(word)):
                        s = word[:i] + "_" + word[i+1:]
                        neigh_words = dict_words.get(s, [])
                        for neigh in neigh_words:
                            if neigh not in visited:
                                queue.append((neigh, steps + 1))
            return 0
        
        d = construct_dict(set(wordList) | set([beginWord]))
        return bfs_words(beginWord, endWord, d)
    
    # note: basically you want build a dict where the subword is the key and the word is the value
    
    # dict = {'sub_word' = ['whole_word']}
    
    # and you need to search for all the potential words that share the same sub word structure
    
    # the distance is stored in the item