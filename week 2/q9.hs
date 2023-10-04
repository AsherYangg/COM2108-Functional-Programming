oddItems :: [Int] -> [Int]
oddItems xs = filter isOdd xs
    where isOdd x = mod x 2 /= 0