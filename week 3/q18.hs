nth :: Int -> [a] -> a
nth n [] = error "Insufficient items in list"
nth 0 (x:xs) = x
nth n (x:xs) = nth (n-1) xs

{-
nth 5 [9,4,10,1,2,6,9]
    = nth 4 ([4,10,1,2,6,9])
      = nth 3 [10,1,2,6,9]
        = nth 2 [1,2,6,9]
            = nth 1 [2,6,9]
                = nth 0 [6,9]
                    = 6
        
-}