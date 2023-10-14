import Data.Char
import Distribution.Compat.Lens (_1)

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c 
    | isLower c = int2let ((let2int c + n) `mod` 26)
    | otherwise = c

encodeMap ::Int -> String -> String
encodeMap n xs = map (shift n) xs

encodeRe :: Int -> String -> String
encodeRe _ [] = []
encodeRe n (x:xs) = shift n x : encodeRe n xs

encodeCo :: Int -> String -> String
encodeCo n xs = [ shift n x | x <- xs]
