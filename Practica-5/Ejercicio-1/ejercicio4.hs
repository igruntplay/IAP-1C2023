reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]