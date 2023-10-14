replicateRe ::  Int -> a -> [a]
replicateRe n x 
    | n <= 0  = []
    | otherwise = x : replicateRe (n-1) x

replicateCo :: Int -> a -> [a]
replicateCo n x = [x | _ <- [1..n]]


takeRe :: Int -> [a] -> a
takeRe n (x:xs)
    | n == 0 = x
    | otherwise =  takeRe (n-1) xs

takeCo :: Int -> [a] -> a
takeCo n xs = head [x |(index,x) <- zip [0..] xs , index == n ] 


sumRe :: Num a => [a] -> a
sumRe [] = 0
sumRe (x:xs) = x + sumRe xs

unZipCo :: [(a,b)] -> ([a] , [b])
unZipCo xs = ([x | (x,_) <- xs ],[y | (_,y) <- xs ])

unZipRe :: [(a,b)] -> ([a], [b])
unZipRe [] = ([], [])
unZipRe ((x,y):xs) = (x:xs1, y:xs2)
    where (xs1, xs2) = unZipRe xs

reverseRe :: [a] -> [a]
reverseRe [] = []
reverseRe (x:xs) = reverseRe xs ++ [x]

reverseCo :: [a] -> [a]
reverseCo xs = [xs !! i | i <- [length xs - 1, length xs - 2..0]]

{-
在 Haskell 中，`!!` 是一个列表索引运算符，用于获取列表中指定位置的元素。
它的语法是 `list !! index`，其中 `list` 是一个列表，`index` 是一个整数，表示要获取的元素的位置。
注意，列表的索引从 0 开始，因此第一个元素的索引是 0，第二个元素的索引是 1，以此类推。
在 `reverseCo` 函数中，`xs !! i` 表示获取列表 `xs` 中索引为 `i` 的元素。
列表推导式 `[xs !! i | i <- [length xs - 1, length xs - 2..0]]` 使用 `!!` 运算符从原列表中取出相应位置的元素，将其添加到新列表中。
-}