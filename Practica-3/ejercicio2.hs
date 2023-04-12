-- Ejercicio A
absoluto :: Integer -> Integer
absoluto x | x < 0 = -(x)
	   | otherwise = x

-- Ejercicio B
maximoAbsoluto :: Integer -> Integer -> Integer
maximoAbsoluto a b | a>=b = absoluto(a)
		    | otherwise = absoluto(b)

-- Ejercicio C
maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 a b c | a >= b && a >=c = a
maximo3 a b c | b >= a && b >= c = b
	      | otherwise = c

-- Ejercicio D
algunoEsCero :: Float -> Float -> Bool
algunoEsCero a 0 = True
algunoEsCero 0 b = True
algunoEsCero _ _ = False

-- Ejercicio E
ambosSonCero :: Float -> Float -> Bool
ambosSonCero 0 0 = True
ambosSonCero _ _ = False

-- Ejercicio F
mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo a b | a <= 3 && b <= 3 = True
mismoIntervalo a b | 3 < a && a <= 7 && 3 < b && b <= 7 = True
mismoIntervalo a b | a > 7 && b > 7 = True
				   | otherwise = False

-- Ejercicio E
sumaDistintos :: Integer -> Integer -> Integer -> Integer
sumaDistintos a b c | a /= b && b /= c && a /= c = a+b+c -- Preguntar porque si no pongo "a /= c no funciona, La desigualdad es transitiva"
					| otherwise = undefined

-- Ejercicio E, propuesto Por Santiago Rocca, preguntar en clase
sumadistintos2 :: Integer -> Integer -> Integer -> Integer
sumadistintos2 x y z |  y==z && z==y && z==x = undefined
sumadistintos2 x y z |  x==y = z + x
sumadistintos2 x y z |  x==z = y + x
sumadistintos2 x y z |  y==z = x + y
sumadistintos2 x y z |  otherwise = x + y + z

-- Ejercicio H
esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe a b | a>0 && b>0 && a `mod` b == 0 = True
				 | otherwise = False

-- Ejercicio I,J preguntar.
