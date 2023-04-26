todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos [x] = True
todosDistintos (x:xs) | x /= head (xs) = todosDistintos xs
                      | otherwise = False