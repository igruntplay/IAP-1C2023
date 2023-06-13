sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero [t] = [t+t]
sumarElPrimero (x:y:xs) = sumarN x (y:xs)

sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n (x:xs) = (x+n) : sumarN n xs