palabras :: [Char] -> [[Char]]
palabras [] = []
palabras [x] = [[x]]
palabras (x:xs) = 