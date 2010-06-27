penultimate           :: [a] -> a
penultimate []        = error "Can't call on list len < 2"
penultimate (a:[])    = error "Can't call on list len < 2"
penultimate (a:b:[])  = a
penultimate (a:xs)    = penultimate xs
