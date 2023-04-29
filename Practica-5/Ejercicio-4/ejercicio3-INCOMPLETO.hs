palabraMasLarga :: [Char] -> [Char]
palabraMasLarga [] = []
palabraMasLarga (x:xs) palabraMasLargaAux (palabras xs)

palabraMasLargaAux :: [Char] -> [Char]
palabraMasLargaAux [] = []
palabraMasLargaAux [x] [x]
palabraMasLargaAux (x:y:xs) | longitud x >= longitud y = palabraMasLargaAux (quitar y (x:xs))
                            | otherwise = palabraMasLargaAux (quitar x (x:xs))

{-
palabraMasLarga :: [Char] -> [Char]
palabraMasLarga [] = []
palabraMasLarga [x] = [x]
palabraMasLarga (x:xs) | contarPalabras 

contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras (x:xs) | x == ' ' = contarPalabras xs
                      | otherwise = 1 + contarPalabrasAux xs
  where contarPalabrasAux [] = 0
        contarPalabrasAux (m:ms) | m == ' ' = 1 + contarPalabras ms
                                 | otherwise = contarPalabrasAux ms

-}