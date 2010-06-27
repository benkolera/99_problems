len :: [a] -> Integer
len = foldr(\ x acc -> acc + 1) 0
