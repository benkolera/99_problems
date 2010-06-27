kth             :: Integer -> [a] -> a 
kth _ []        = error "Index < list length"
kth 0 (a:_)     = a
kth i (a:xs)    = kth (i-1) xs
