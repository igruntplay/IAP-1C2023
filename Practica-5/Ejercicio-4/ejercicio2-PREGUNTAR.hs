contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras [x] = 1
contarPalabras (x:xs) | x == ' ' = contarPalabras xs
                      | otherwise = 1 + contarPalabrasAux xs
  where contarPalabrasAux [] = 0
        contarPalabrasAux (m:ms) | m == ' ' = 1 + contarPalabras ms
                                 | otherwise = contarPalabrasAux ms

contarPalabras2 :: [Char] -> Integer
contarPalabras2 [] = 0
contarPalabras2 [x] = 1
contarPalabras2 (x:xs) | x == ' ' = 1 + contarPalabras2 xs
                       | otherwise = contarPalabras2 xs