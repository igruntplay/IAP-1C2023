contarPalabras :: [Char] -> Integer
contarPalabras [] = 0
contarPalabras (x:y:xs) | x == ' ' = contarPalabras (y:xs)
 			| otherwise = 1 + contarPalabrasAux (y:xs)
	where contarPalabrasAux [] = 0
       contarPalabrasAux (m:ms) | m == ' ' && xs /= [] && y /= ' ' = 1 + contarPalabras ms
				| otherwise = contarPalabrasAux ms
