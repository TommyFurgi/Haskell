import Data.Char (toLower)
doubleElems []     = []
doubleElems (x:xs) = 2 * x : doubleElems xs


map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs


doubleElems2 = map' (*2)
sqrElems    = map' (sqrt)
lowerCase   = map' toLower