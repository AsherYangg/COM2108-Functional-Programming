import Data.Char
firstWord :: String -> String
firstWord sentence = takeWhile isAlpha (dropWhile (\x -> isAlpha x == False ) sentence)