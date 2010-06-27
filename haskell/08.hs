-- Careful now. If you specify a type here you must define an equality operator
-- for your type a. If you leave it off, then the compiler is a ninja and infer
-- the type of the list from how you use it. So long as it is a type that has ==
-- defined, you shall have no problems. 
--
--compress              :: [a] -> [a] 
compress []           = []
compress [a]          = [a]
compress (a : b : xs)
  | a==b      = compress(b:xs)
  | otherwise = a : compress(b:xs) 
