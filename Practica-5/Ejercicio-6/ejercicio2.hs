type Set a = [a]

partes :: Integer -> Set (Set Integer) 
partes 0 = [[]]
partes n = partes (n-1) ++ (agregarATodos n (partes (n-1)))

agregarATodos :: Integer -> Set (Set Integer) -> Set (Set Integer)
agregarATodos _ [] = []
agregarATodos n (x:xs) = (n:x) : agregarATodos n xs