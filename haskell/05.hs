revHlp              :: [a] -> [a] -> [a]
revHlp acc []       = acc
revHlp acc (a:xs)   = revHlp (a:acc) xs   

rev :: [a] -> [a]
rev l = revHlp [] l
