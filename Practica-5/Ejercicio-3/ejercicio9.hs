ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar xs = let x = minimum xs in x : ordenar (remove x xs)

remove :: Integer -> [Integer] -> [Integer]
remove _ [] = []
remove x (y:ys)
  | x == y    = ys
  | otherwise = y : remove x ys
