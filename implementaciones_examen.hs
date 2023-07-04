cambiar :: [(Char,Char)] -> [Char] -> [Char]
cambiar _ [] = []
cambiar diccionario (x:xs) = cambiarCaracter diccionario x : cambiar diccionario xs

cambiarCaracter :: [(Char,Char)] -> Char -> Char
cambiarCaracter ((x,y):xs) caracter | caracter == x = y
                                    | otherwise = cambiarCaracter xs caracter

verifica :: [(Char,Char)] -> [[Char]] -> [[Char]] -> Bool
verifica _ [] [] = True
verifica b (m:ms) (n:ns) | cambiar b m == n = True && verifica b ms ns