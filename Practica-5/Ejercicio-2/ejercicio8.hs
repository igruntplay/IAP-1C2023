mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] [] = True
mismosElementos xs ys = eliminarRepetidos xs == eliminarRepetidos ys





eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodos x xs)

quitarTodos :: (Eq t ) => t -> [t] -> [t]
quitarTodos e xs = quitarTodosAux e xs

quitarTodosAux :: (Eq t ) => t -> [t] -> [t]
quitarTodosAux _ [] = []
quitarTodosAux e (x:xs) | e == x = quitar e xs
                     | otherwise = x : quitarTodosAux e xs 

quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar e (x:xs) | e == x = quitar e xs
                | otherwise = x : quitar e xs
