sumaDigitos :: Integer -> Integer
sumaDigitos n
    | n < 10    = n
    | otherwise = sumaDigitos (n `div` 10) + (n `mod` 10)

-- Si n tiene más de un dígito, calculamos la suma de los dígitos del número eliminando el último dígito (n div 10) y sumando el último dígito (n mod 10).
