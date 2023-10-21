altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap _ _ [] = []  
altMap f1 f2 (x:xs)= f1 x : altMap f2 f1 xs  

luhnDouble :: Int -> Int
luhnDouble x = if double > 9 then double - 9 else double
  where double = x * 2

luhn :: [Int] -> Bool
luhn xs = total `mod` 10 == 0
  where
    processed = altMap luhnDouble id xs
    total = sum processed

