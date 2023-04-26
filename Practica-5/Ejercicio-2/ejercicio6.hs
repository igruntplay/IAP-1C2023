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
