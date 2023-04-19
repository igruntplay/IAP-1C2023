iesimoDigito :: Integer -> Integer -> Integer
iesimoDigito n i = (n `div` 10^(cantDigitos(n)-i)) `mod` 10

cantDigitos :: Integer -> Integer
cantDigitos n | n == 0 = 1
              | otherwise = contarDigitos n
              where
                contarDigitos 0 = 0
                contarDigitos n = 1 + contarDigitos (n `div` 10)