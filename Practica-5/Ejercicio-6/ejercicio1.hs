type Set a = [a]

{-
Es horrible la 1ra implementación
-}
agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos n [] = []
agregarATodos n (x:xs) = agregarATodosAux n x : agregarATodos n xs
  where agregarATodosAux n [] = [n]
        agregarATodosAux n (y:ys) = y : agregarATodosAux n ys


agregarATodos2 :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos2 _ [] = []
agregarATodos2 n (x:xs) = (n:x) : agregarATodos2 n xs