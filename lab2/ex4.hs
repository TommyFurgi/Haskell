import Data.Char (toLower, toUpper)
isPalindrome :: [Char] -> Bool
isPalindrome s = s == reverse s


getElemAtIdx s ind = s !! ind

    