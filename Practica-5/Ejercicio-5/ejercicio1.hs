nat2bin :: Integer -> [Integer]
nat2bin n = reverso (nat2binAux n)

nat2binAux :: Integer -> [Integer]
nat2binAux n | n < 2 = [n] 
      | otherwise = [mod n 2] ++ nat2binAux (div n 2)

{-
      Con el auxiliar, basta  y sobra.
      Reverso y nat2bin, son innecesarios.
-}
reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]