def scrollingNum(a, b):
    res = []
    for i in range(a, b):
        int_vec = [ int(num) for num in str(i)]
        # filter 0 and repetative 
        if 0 in int_vec or len(int_vec) != len(set(int_vec)):
            continue
        if not sum(int_vec) % len(int_vec) == 0:
            continue
        else:
            r = sum(int_vec)//len(int_vec)
            test_vec = []
            for _ in range(r):
                test_vec += int_vec
            visited = []
            pt = 0
            idx = 0
            for _ in range(len(int_vec)):
                tmp_v = test_vec[pt]
                if not tmp_v in visited:
                    visited.append(tmp_v)
                    pt += tmp_v
                else:
                    break
            if len(visited) == len(int_vec):
                res.append(i)
    return res
                    
