-- Pack consecutive duplicates of list elements into sublists. If a list
-- contains repeated elements they should be placed in separate sublists.
--
-- Example in Haskell:
-- *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e',
-- 'e']
-- ["aaaa","b","cc","aa","d","eeee"]

-- No lib solution
pack l = pack' [(head l)] (tail l)
  where
    pack' dups []       = dups : []
    pack' (a:as) (b:bs)
      | a==b      = pack' (b:a:as) bs
      | otherwise = (a:as) : (pack' [b] bs)

-- Doing it the nicer way. :)
packLib [] = []
packLib (a:as) = 
  let (dups,rest) = span (\ x -> x == a) as
  in (a:dups) : packLib rest

