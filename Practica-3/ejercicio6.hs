esMultiplo :: Integer -> Integer -> Bool
esMultiplo a b = a `mod` b == 0

bisiesto :: Integer -> Bool
bisiesto year = (esMultiplo year 4 && not (esMultiplo year 100)) || esMultiplo year 400
