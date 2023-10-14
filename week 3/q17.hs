fact2 :: Integer -> Integer
fact2 0 = 1
fact2 n
    | n < 0 = error "Negative number"
     | n>0 = n * fact2 (n-1)
