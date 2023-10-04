luhnDouble :: Int -> Int  -- doubles a digit and subtracts 9 if the result is greater than 9.
luhnDouble x | x * 2 > 9  = x * 2 - 9
             | otherwise  = x *2

luhn :: Int -> Int -> Int -> Int -> Bool
luhn n1 n2 n3 n4 = total `mod` 10 == 0
    where total = luhnDouble n1 + luhnDouble n2 + luhnDouble n3 + luhnDouble n4