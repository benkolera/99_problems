-- In Haskell, it isn't possible to have a heterogenous list (whereas it is
-- possible in scala) so we need to make a type to handle this tree structure
data NestedList a = Elem a | List[NestedList a]

--Now the solution looks pretty much like the scala one. 

flatten           :: NestedList a -> [a]
flatten (List a)  = concatMap flatten a
flatten (Elem a)  = [a]

