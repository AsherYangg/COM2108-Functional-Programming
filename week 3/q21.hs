listSum :: Num a => [a] -> a
listSum [] = 0
listSum (x:xs) = x + listSum xs

takeN :: Int -> [a] -> [a]
takeN n (x:xs)
  | n <= 0 || null xs = []
  | otherwise = x : takeN (n-1) xs


lastElement :: [a] -> a
lastElement (x:xs)
  | null xs = x
  | otherwise = lastElement xs