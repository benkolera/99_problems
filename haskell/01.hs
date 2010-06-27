lastMy    :: [a] -> a
lastMy    []      = error "Can't call last on an empty list"
lastMy    (a:[])  = a
lastMy    (a:xs)  = lastMy xs
