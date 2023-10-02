sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1

absInt :: Int -> Int  
absInt a = if a >= 0
        then a
        else (-1)*a

min2Int :: (Int, Int) -> Int 
min2Int (x,y) = if x < y
        then x
        else y

min3Int :: (Int,Int,Int) -> Int
min3Int (a,b,c) = if min2Int(a,b) < min2Int(b,c)
            then min2Int(a,b)
            else min2Int(b,c)

toUpper :: Char -> Char
toUpper c = if (fromEnum c) > 96
        then toEnum((fromEnum c) - 32)
        else c

isDigit :: Char -> Bool
isDigit x = (fromEnum x) >= 48 && (fromEnum x) <= 57

romanDigit :: Char -> String
romanDigit '1' = "I"
romanDigit '2' = "II"
romanDigit '3' = "III"
romanDigit '4' = "IV"
romanDigit '5' = "V"
romanDigit '6' = "VI"
romanDigit '7' = "VII"
romanDigit '8' = "VIII"
romanDigit '9' = "IX"
romanDigit _ = "Invalid input"