stack :: [a] -> [a]
stack xs = xs ++ take 1 xs
    where
        xs1 = 