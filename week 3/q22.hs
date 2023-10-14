zips :: [a] -> [b] -> [(a, b)]
zips [] _ = []
zips _ [] = []
zips (x:xs) (y:ys) = (x, y) : zips xs ys