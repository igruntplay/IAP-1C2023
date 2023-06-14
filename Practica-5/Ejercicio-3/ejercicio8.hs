{-dado un numero n y una lista xs, devuelve una lista con los elementos de  xs multiplos de n-}
multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN n [] = []
multiplosDeN n (x:xs) | (esMultiplo n x) = x : multiplosDeN n xs
                      | otherwise = multiplosDeN n xs


esMultiplo :: Integer -> Integer -> Bool
esMultiplo n x = x `mod` n == 0