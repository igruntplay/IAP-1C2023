-- ejercicio A
f1 :: Integer -> Integer
f1 0 = 1
f1 x = 2^x + f1 (x-1)

-- ejercicio B
f2 :: Integer -> Float -> Float
f2 1 q = q
f2 n q = q^n + f2 (n-1) q

-- Ejercicio C
f3 :: Integer -> Float -> Float
f3 0 q = 0
f3 1 q = q^2 + q
f3 n q = q^(2*n) + f2 (2*n-1) q

-- Ejercicio C, otra forma más piola
f3_2 1 q = q + q^2
f3_2 n q = f3_2 (n-1) q + q^(2*n -1) + q^(2*n)

-- Ejercicio D
f4 :: Integer -> Integer -> Integer
f4 n q = f4aux (2 * n) q n

f4aux :: Integer -> Integer -> Integer -> Integer
f4aux n q i | i == n = q^n
            | otherwise = q^n + f4aux (n - 1) q i


