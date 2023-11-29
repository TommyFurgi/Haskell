sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

sumSqr' :: Num a => [a] -> a
sumSqr' [] = 0
sumSqr' (x:xs) = x^2 + sumSqr' xs

sumWith :: Num a => (a -> a) -> [a] -> a
sumWith f [] = 0
sumWith f (x:xs) = f x + sumWith f xs
-- sumWith (^2) [1..3]



sum2 xs  = sumWith (\x -> x) xs
sumSqr xs = sumWith (\x -> x^2) xs


listLength xs = sumWith (\x -> 1) xs    


map2 f [] = []
map2 f (x:xs) = [f x] ++ map2 f xs