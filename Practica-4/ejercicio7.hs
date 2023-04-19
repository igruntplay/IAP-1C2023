todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n | n < 10 = True
                      | n `div` 10 == 0 = True
                      | n `mod` 10 == (n `div` 10) `mod` 10 = todosDigitosIguales (n `div` 10)
                      | otherwise = False