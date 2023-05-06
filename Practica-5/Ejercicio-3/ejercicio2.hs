productoria :: [Integer] -> Integer
productoria [] = 0
productoria (x:xs) = x + productoria xs