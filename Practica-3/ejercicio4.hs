-- Ejercicio A
prodInt :: (Float, Float) -> (Float, Float) -> Float
prodInt (a,b) (c,d) = a*c + b*d
-- Ejercicio B
todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor (a,b) (c,d) | a > c = True
                      | otherwise = False
-- Ejercicio C
distanciaPuntos :: (Float, Float) -> Float
distanciaPuntos (a,b) = sqrt((a**2) + (b**2))

-- Ejercicio D
sumaTerna :: (Integer, Integer, Integer) -> Integer
sumaTerna (a,b,c) = a+b+c

-- Ejercicio E
sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer
sumarSoloMultiplos (a,b,c) n = sum [i | i <- [a,b,c], i `mod` n == 0]

-- Ejercicio F
-- Auxiliar del ejercicio F
esPar :: Integer -> Bool
esPar a = a `mod` 2 == 0

posPrimerPar :: (Integer, Integer, Integer) -> Integer
posPrimerPar (a,b,c) | esPar(a) = 0
posPrimerPar (a,b,c) | esPar(b) = 1
posPrimerPar (a,b,c) | esPar(c) = 2
                     | otherwise = 4
