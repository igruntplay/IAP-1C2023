palabras :: [Char] -> [[Char]]
palabras [] = []
palabras (x:xs) = palabrasAux(sacoPrimerEspacio( sacarBlancosRepetidos (x:xs)))
    where
        palabrasAux (x:xs) = primerPalabra (x:xs) : palabras (sacarPalabra (x:xs))
        sacoPrimerEspacio (x:xs) | x == ' ' = xs
                                 | otherwise = (x:xs)
primerPalabra :: [Char] -> [Char]
primerPalabra [] = []
primerPalabra (x:xs) | x == ' ' = []
                     | otherwise = x : primerPalabra xs

sacarPalabra :: [Char] -> [Char]
sacarPalabra [] = []
sacarPalabra (x:xs) | x == ' ' = xs
                     | otherwise = sacarPalabra xs
sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs) | x == ' ' && y == ' ' = sacarBlancosRepetidos (y:xs)
                               | otherwise = x : sacarBlancosRepetidos (y:xs)
