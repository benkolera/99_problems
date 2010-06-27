len         :: [a] -> Integer
len []      = 0
len (a:xs)  = 1 + len(xs)
