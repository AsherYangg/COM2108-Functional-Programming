indices :: Eq a => a -> [a] -> [Int]
indices x xs = [index | (index, y)<- zip [0..] xs , y == x]