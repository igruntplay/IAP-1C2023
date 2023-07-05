{-
Hice esto con compañeros
-}

cambiar :: [(Char,Char)] -> [Char] -> [Char]
cambiar _ [] = []
cambiar diccionario (x:xs) = cambiarCaracter diccionario x : cambiar diccionario xs

cambiarCaracter :: [(Char,Char)] -> Char -> Char
cambiarCaracter ((x,y):xs) caracter | caracter == x = y
                                    | otherwise = cambiarCaracter xs caracter

verifica :: [(Char,Char)] -> [[Char]] -> [[Char]] -> Bool
verifica _ [] [] = True
verifica b (m:ms) (n:ns) | cambiar b m == n = True && verifica b ms ns


secuencia :: [Integer] -> Integer -> [Integer]
secuencia [] _ = []
secuencia (x:xs) n | x `mod` 2 == 0 = (x*n) : (secuencia xs n)
                   | otherwise = x : (secuencia xs n)

borrarMult3 :: [Integer] -> [Integer]
borrarMult3 [] = []
borrarMult3 (x:xs) | x `mod` 3 == 0 = borrarMult3 xs
                   | otherwise = x : borrarMult3 xs

esMatriz :: [[Integer]] -> Bool
esMatriz [] = True 
esMatriz (x:y:xs) | longitud x == longitud y = True && esMatriz xs
                  | otherwise = False

longitud :: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece e (x:xs) = e == x || pertenece e xs

perteneceA :: [[Integer]] -> Integer -> [[Bool]]
perteneceA [] _ = []
perteneceA (x:xs) a = [pertenece a x] : (perteneceA xs a)

fo :: [[Integer]] -> [Bool]
fo [] = []
fo (x:xs) | ordenados x = True : fo xs
          | otherwise = False : fo xs

ordenados :: [Integer] -> Bool
ordenados [] = True
ordenados [e] = True
ordenados (x:y:xs) | (x <= y) = ordenados (y:xs)
                   | otherwise = False