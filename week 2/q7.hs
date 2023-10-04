import Data.Char

-- a) stack takes the first element of a list and puts it on the end of a list
stack :: [a] -> [a]
stack xs = tail xs ++ [head xs]

-- b) range takes a numerical value and checks to see if it is between 0 and 10, returnsTrue if it is False otherwise
range :: ( Num a , Ord a ) => a -> Bool
range number | number > 0 && number < 10  = True
             | otherwise                  = False 

-- c) addc takes a Char and a String and adds the Char to the beginning of the String
addc :: Char -> String -> String
addc ch str = ch : take 1 str

-- d) halves takes a list and divides each element in the list by two
halves :: Fractional a => [a] -> [a]
halves xs = map (\x -> x / 2) xs


--e) capitalizeStart that takes a string as input and returns the same string with the first character capitalized. (If the first character is not a lowercase letter, it should simply return the input string.)
capitalizeStart :: String -> String
capitalizeStart [] = []
capitalizeStart str | isLower (head str) = toUpper (head str) : tail str
                    | otherwise          = str