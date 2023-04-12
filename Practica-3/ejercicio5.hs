todosMenores :: (Integer, Integer, Integer) -> Bool
todosMenores (x, y, z) = (f x > g x) && (f y > g y) && (f z > g z)

f :: Integer -> Integer
f a | a <= 7 = a*a
f a | a>7 = 2*a-1

g :: Integer -> Integer
g a | esPar(a) == True = div a 2
    | otherwise = 3*a +1

esPar :: Integer -> Bool
esPar a = a `mod` 2 == 0