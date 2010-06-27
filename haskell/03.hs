kth             :: Integer -> [a] -> a 
kth _ []        = error "Index < list length"
kth 0 (a:_)     = a
kth i (a:xs)    
  | i < 0     = error "Index < list length"
  | otherwise = kth (i-1) xs
