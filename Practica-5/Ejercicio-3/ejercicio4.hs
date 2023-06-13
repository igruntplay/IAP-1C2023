maximo :: [Integer] -> Integer
maximo [] = 0
maximo [t] = t
maximo (x:xs) | x > head xs = x
                | otherwise = maximo xs