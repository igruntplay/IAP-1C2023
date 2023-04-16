distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (a1, a2, a3) (b1, b2, b3) = abs (b1 - a1) + abs (b2 - a2) + abs (b3 - a3)
