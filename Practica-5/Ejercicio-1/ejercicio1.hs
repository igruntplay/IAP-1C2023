inverso :: [Integer] -> [Integer]
inverso [] = []
inverso (x:xs) = (inverso xs) ++ [x]

longitud :: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs
