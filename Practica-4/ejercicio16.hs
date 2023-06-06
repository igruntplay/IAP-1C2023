menorDivisor :: Integer -> Integer
menorDivisor n = menorDivisorAux n 2

menorDivisorAux :: Integer -> Integer -> Integer
menorDivisorAux n m | n `mod` m == 0 = m
                    | otherwise = menorDivisorAux n (m+1)

{-Recordar que un primeo es aquel numero mayor a 1 que solo se pueda dividir por sí mismo-}
esPrimo :: Integer -> Bool
esPrimo n | menorDivisor n == n = True
          | otherwise = False

maximoComunDivisor :: Integer -> Integer -> Integer
maximoComunDivisor n m | n == m = n
                       | n == 1 || m == 1 = 1
                       | otherwise = maximoComunDivisor m (m `mod` n)

sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos n m | (maximoComunDivisor n m) == 1 = True
                | otherwise = False

{- incompleto PREGUNTAR
nEsimoPrimo :: Integer -> Integer
nEsimoPrimo n = nEsimoPrimoAux-}