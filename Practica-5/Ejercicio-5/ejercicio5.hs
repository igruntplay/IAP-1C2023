{-- IDEA:
hacer auxiliar esPrimo que devuelve true or false, si es primo que siga recorriendo la lista sin hacer nada
y si no es primo que utilice un auxiliar que se llame Descomponer que lo que hace es agarrar al numero y lo factoriza en sus numeros primos, luego agrega todo a la lista nueva


 --}

descomponerEnPrimos :: [Integer] -> [[Integer]]
descomponerEnPrimos [] = []
descomponerEnPrimos (x:xs) | esPrimo x = [x] : descomponerEnPrimos xs
                           | otherwise = descomponer x : descomponerEnPrimos xs


esPrimo :: Integer -> Bool
esPrimo n | menorDivisor n == n = True
          | otherwise = False 

menorDivisor :: Integer ->Integer
menorDivisor n = menorDivisorHasta n 2

menorDivisorHasta :: Integer -> Integer -> Integer -- se requiere que q == 2
menorDivisorHasta n q | mod n q == 0 = q
                      | otherwise = menorDivisorHasta n (q+1)

descomponer :: Integer -> [Integer]
descomponer n = descomponerAux n 2

descomponerAux :: Integer -> Integer -> [Integer]
descomponerAux 1 _ = []
descomponerAux n divisor | n < divisor = []
                         | n `mod` divisor == 0 = divisor : descomponerAux (n `div` divisor) divisor
                         | otherwise = descomponerAux n (divisor + 1)   
