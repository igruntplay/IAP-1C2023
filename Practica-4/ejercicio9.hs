esCapicua :: Integer -> Bool
esCapicua n = n == invertir n

invertir :: Integer -> Integer
invertir n | n < 10 = n
           | otherwise = resto * 10^(cantDigitos cociente) + invertir cociente
  where resto = n `mod` 10
        cociente = n `div` 10

cantDigitos :: Integer -> Integer
cantDigitos n | n == 0 = 1
              | otherwise = contarDigitos n
              where
                contarDigitos 0 = 0
                contarDigitos n = 1 + contarDigitos (n `div` 10)