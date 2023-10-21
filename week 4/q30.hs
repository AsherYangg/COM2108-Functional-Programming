 data Shape = Circle Float | Rect Float Float
     deriving Show

 scale :: Float -> Shape -> Shape
 scale n (Circle c) =Circle (c * n)
 scale n (Rect r1 r2) = Rect (r1 * n) (r2 * n)