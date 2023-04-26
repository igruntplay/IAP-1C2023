quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = []
quitar e (x:xs) | e == x = quitar e xs
                | otherwise = x : quitar e xs