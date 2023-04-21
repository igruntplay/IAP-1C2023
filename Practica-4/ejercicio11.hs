eAprox :: Integer -> Float
eAprox n | n == 0 = 1
         | otherwise = eAprox (n-1) + 1 / factorial (fromIntegral n)


factorial :: Float -> Float
factorial 0 = 1
factorial n = n * (factorial (n-1))