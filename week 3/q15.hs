choose ::(Num a, Ord a) => [(Bool, a)] -> [(Bool, a)]
choose = filter (\(x,y) -> x == True && y < 10)