rev :: [a] -> [a]
rev l = revHlp [] l
  where
    revHlp acc []       = acc
    revHlp acc (a:xs)   = revHlp (a:acc) xs   
