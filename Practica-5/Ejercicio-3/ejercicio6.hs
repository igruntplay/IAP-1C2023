
sumarElUltimo :: [Integer] -> [Integer]
sumarElUltimo (x:xs) = sumarElPrimeroAux x (x:xs)

sumarElPrimeroAux :: Integer -> [Integer] -> [Integer]
sumarElPrimeroAux a (x:xs) = sumarN (elUltimo (x:xs)) (x:xs)

elUltimo :: [Integer] -> Integer
elUltimo (x:xs) = last (x:xs)

inverso :: [Integer] -> [Integer]
inverso [] = []
inverso (x:xs) = (inverso xs) ++ [x]

sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n (x:xs) = (x+n) : sumarN n xs

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero [t] = [t+t]
sumarElPrimero (x:y:xs) = sumarN x (y:xs)
