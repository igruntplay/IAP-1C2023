medioFac :: Integer -> Integer
medioFac n  | n==0 = 1
	    | n==1 = 1
	    | otherwise = n*medioFac (n-2)