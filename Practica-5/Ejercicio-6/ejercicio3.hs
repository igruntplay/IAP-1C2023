type Set a = [a]

productoCartesiano :: Set Integer -> Set Integer -> Set (Integer, Integer)
productoCartesiano [] _ = []
productoCartesiano _ [] = []
productoCartesiano (x:xs) ys = productoCartesianoUnoConTodos x ys ++ productoCartesiano xs ys

productoCartesianoUnoConTodos :: Integer -> Set Integer -> Set (Integer, Integer)
productoCartesianoUnoConTodos _ [] = []
productoCartesianoUnoConTodos x (y:ys) = (x, y) : productoCartesianoUnoConTodos x ys
