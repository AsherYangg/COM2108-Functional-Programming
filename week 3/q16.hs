-- [x ^ 2 | x <- [1..20], even x]

map (\x -> x ^ 2) (filter even [1..20])