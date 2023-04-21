f :: Integer -> Integer -> Integer
f 1 m = faux 1 m
f n m = f (n-1) m + faux n (m-1)

faux :: Integer -> Integer -> Integer
faux n 1 = n
faux n m = n^m + faux n (m-1)