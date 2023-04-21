raizDe2Aprox :: Integer -> Float
raizDe2Aprox n = raizDe2AproxSucesion n-1

raizDe2AproxSucesion :: Integer -> Float
raizDe2AproxSucesion n | n == 1 = 2
               | otherwise = 2 + 1 / ((raizDe2AproxSucesion (n-1)))