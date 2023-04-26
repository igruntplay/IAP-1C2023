pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece e (x:xs) = e == x || pertenece e xs

hayRepetidos :: (Eq t) => [t] -> Bool
hayRepetidos [] = False
hayRepetidos [x] = False
hayRepetidos (x:xs) = if pertenece x xs then True else hayRepetidos xs
