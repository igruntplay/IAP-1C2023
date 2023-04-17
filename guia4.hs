fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci (n - 1) + fibonacci (n-2)

parteEntera :: Float -> Integer
parteEntera n = toInteger (round  n)

esDivisibleSinMod :: Integer -> Integer -> Bool
esDivisibleSinMod a b | a < b = False
                      | a == b = True
                      | otherwise = esDivisibleSinMod (a-b) b

sumaImpares :: Integer -> Integer
sumaImpares n | n == 1 = 1
              | otherwise = (2*n - 1) + sumaImpares (n-1)

--medioFact :: Integer ->
