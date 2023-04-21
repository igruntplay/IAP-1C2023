sumaRacionales :: Integer -> Integer -> Float

sumaRacionales n m = sumaPotenciasAux n m + sumaPotenciasAux n (m-1)


sumaPotencias :: Integer -> Integer -> Integer -> Integer
sumaPotencias q 1 b = sumaPotenciasAux q 1 b
sumaPotencias q a b = sumaPotencias q (a-1) b + sumaPotenciasAux q a b

sumaPotenciasAux :: Integer -> Integer -> Integer -> Integer
sumaPotenciasAux q a 1 = q^(a+1)
sumaPotenciasAux q a b = q^(a+b) + sumaPotenciasAux q a (b-1)