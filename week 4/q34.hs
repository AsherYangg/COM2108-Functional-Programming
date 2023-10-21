{-
Rewrite the following expressions as list comprehensions:
a. map (+3) xs
b. filter (>7) xs
c. concat (map (\x -> map (\y -> (x,y)) ys) xs)
d. filter (>3) (map (\(x,y) -> x+y) xys)
-}

--a
--[x + 3 | x <- xs]

--b 
--[x| x <- xs , x >7]

--c 
-- [(x,y) | x <- xs, y <- ys]

--d 
-- [(x,y) | (x,y) <- xys , x+y>3]
