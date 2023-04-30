nat2bin :: Integer -> [Integer]
nat2bin n = reverso (nat2binAux n)

nat2binAux :: Integer -> [Integer]
nat2binAux n | n < 2 = [n] 
      | otherwise = [mod n 2] ++ nat2binAux (div n 2)

reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]