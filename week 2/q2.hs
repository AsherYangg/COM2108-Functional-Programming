second xs = head (tail xs) -- second :: [a] -> a
swap (x,y) = (y,x) -- swap :: (a, b) -> (b, a)
pair x y = (x,y) -- pair :: a -> b -> (a,b)
double x = x*2 -- Num a => a -> a
palin xs = reverse xs == xs  -- a -> Bool
twice f x = f (f x)  -- twice :: (t -> t) -> t -> t