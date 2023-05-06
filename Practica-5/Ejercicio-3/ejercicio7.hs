pares :: [Integer] -> [Integer]
pares [] = []
pares (x:xs) | x `mod` 2 == 0 = [x] ++ pares xs
             | x `mod` 2 /= 0 = pares xs