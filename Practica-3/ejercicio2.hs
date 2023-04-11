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
		 