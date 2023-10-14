increment :: Int -> Int
increment a = (\a -> a + 1) a 

decrement :: Int -> Int
decrement a = (\a -> a - 1) a 



isPrime :: Int -> Bool
isPrime n = factors n == [1,n]

factors :: Int -> [Int]
factors n = [x | x <- [1..n-1], n `mod` x == 0]