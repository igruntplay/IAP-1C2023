--maximo :: [Integer] -> Bool
--maximo [x] = x
--maximo (x:y:xs) | x > y = maximo (x:xs)
--                | otherwise = maximo (y:ys)

principio :: [t] -> [t]
principio [x] = []
principio (x:xs) = x : principio xs
