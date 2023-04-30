bin2nat :: [Integer] -> Integer
bin2nat [] = 0
bin2nat (x:xs) = fromIntegral x* 2^(length xs) + bin2nat xs