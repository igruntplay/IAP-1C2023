fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci (n - 1) + fibonacci (n-2)

esFibonacci :: Integer -> Bool
esFibonacci n | esFibonacciAux n 0 = True
              | otherwise = False

esFibonacciAux :: Integer -> Integer -> Bool
esFibonacciAux n i | n == fibonacci i = True
                   | n < fibonacci i = False
                   | otherwise = esFibonacciAux n (1+i)