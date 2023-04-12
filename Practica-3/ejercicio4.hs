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