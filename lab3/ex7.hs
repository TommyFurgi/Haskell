import Data.Char (isUpper)

onlyEven [] = []
onlyEven (x:xs)
 | x `mod` 2 == 0 = x : onlyEven xs
 | otherwise      = onlyEven xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs


onlyOdd = filter' (\x -> x `mod` 2 /= 0)

onlyUpper = filter' isUpper


a =filter (\s -> length s == 2) ["a", "aa", "aaa", "b", "bb"]
b = filter (\(x,y) -> x > y) [(1,2), (2,2), (2,1), (2,2), (3,2)]
c = filter (\xs -> sum xs > 300) [[1..5], [56..60], [101..105]]
d = length . filter (\f -> f 2 > 10) $ [(+5), (*5), (^5), \x -> 3 * x + 7]