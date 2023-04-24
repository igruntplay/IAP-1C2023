inverso :: [Integer] -> [Integer]
inverso [] = []
inverso (x:xs) = (inverso xs) ++ [x]
