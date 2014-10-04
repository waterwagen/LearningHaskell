doubleMe x = x + x
tripleMe x = (doubleMe x) + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x < 1000 then x * 2 else x

-- defining the parameter types of a method
onlyUppercase :: String -> String
onlyUppercase xs = [ch | ch <- xs, ch `elem` ['A'..'Z']]

-- pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "That's a lucky number!"
lucky x = "Fail, you just got jinxed."

printGT5 :: (Integral a) => a -> String
printGT5 1 = "Equal to or less than 5"
printGT5 2 = "Equal to or less than 5"
printGT5 3 = "Equal to or less than 5"
printGT5 4 = "Equal to or less than 5"
printGT5 5 = "Equal to or less than 5"
printGT5 x = "Greater than 5!"

charToName :: Char -> String
charToName 'a' = "Albert"
charToName 'b' = "Bob"
charToName 'c' = "Charles"
charToName x = "It's Pat"

-- recursion w/pattern matching
addList :: (Num a) => [a] -> a
addList [] = 0
addList (x:xs) = x + addList(xs)

-- pattern matching w/keeping a reference to the whole thing
firstLetter :: String -> String
firstLetter "" = "No first letter because the string is empty"
firstLetter all@ (x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- another test of Git and Intellij integration
