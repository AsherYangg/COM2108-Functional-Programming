mystery xs = foldr (++) [] (map sing xs)
    where
    sing x = [x]
{-

-}