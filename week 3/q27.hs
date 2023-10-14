{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}

approx_pi :: Double -> (Double, Int)
approx_pi tolerance = do_convergence 1 1
    where
        do_convergence current step
            | abs(4 * next) < tolerance = (4*current,step)
            | odd step = do_convergence (current - next ) (step + 1)
            | otherwise = do_convergence (current + next ) (step + 1)
            where 
                next = 1 / fromIntegral( (step+1) * 2 - 1)