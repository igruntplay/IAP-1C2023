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
{-
aux :: [Char] -> [[Char]]
aux [] = [[]]
"uhdfksn faefg ogllg      " -> [[uhdfksn], [faefg], [ogllg]]

borrarEspaciosDelFinal :: "

1ro necesito un auxiiliar que me revierta el orden de la lista al reves
funcion revertir
2do necesito un auxiliar que me quite los espacios del prinicpio
entonces seria contarpalabras quitar espacios del principio revertir quitar espacios del principio
-}