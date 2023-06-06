{-
Preguntar
-}
type Set a = [a]

productoCartesiano :: Set Integer -> Set Integer -> Set (Integer, Integer)
productoCartesiano [] [] = []
productoCartesiano (x:xs) (y:ys) | 
