-- Solution using conditional expression
safeTail :: [a] -> [a]
safeTail xs = if null xs then [] else tail xs

-- Solution using guarded equations
safeTail :: [a] -> [a]
safeTail xs | null xs     = []
            | otherwise   = tail xs