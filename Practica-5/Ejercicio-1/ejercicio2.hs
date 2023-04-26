ultimo :: [t] -> t
ultimo [x] = x
ultimo (x:xs) = ultimo xs