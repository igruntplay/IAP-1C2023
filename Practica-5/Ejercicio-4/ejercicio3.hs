palabraMasLarga :: [Char] -> [Char]
palabraMasLarga [] = []
palabraMasLarga (x) = maximo (palabras x)

maximo :: [[t]] -> [t]
maximo [xs] = xs
maximo (x:xs) | length x <= length (maximoRecursion) = maximoRecursion
              | otherwise = x
      where
            maximoRecursion = maximo xs

palabras :: [Char] -> [[Char]]
palabras [] = []
palabras (x:xs) =  
palabras (x:xs) = primerPalabra (x:xs) : palabras (sacarPalabra (x:xs))

primerPalabra :: [Char] -> [Char]
primerPalabra [] = []
primerPalabra (x:xs) | x == ' ' = []
                     | otherwise = x : primerPalabra xs

sacarPalabra :: [Char] -> [Char]
sacarPalabra [] = []
sacarPalabra (x:xs) | x == ' ' = xs
                     | otherwise = sacarPalabra xs

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