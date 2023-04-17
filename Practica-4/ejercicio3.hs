esDivisibleSinMod :: Integer -> Integer -> Bool
esDivisibleSinMod a b | a < b = False
                      | a == b = True
                      | otherwise = esDivisibleSinMod (a-b) b
