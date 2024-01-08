lst = [ a-b | a <- [1..5], b <- [1..a-1], even (a + b)]

f = (+3) 

g = (^2) 

l = reverse (take 5 (0: [] ++ [2..])) !! 3  -- 2
p = zip [1..] (reverse(take 3 (2: [2..]))) -- [(1,3),(2,2),(3,2)]



sumSquares :: Num a => [a] -> a
sumSquares = loop 0
    where loop acc [] = acc
          loop acc (x:xs) = loop (acc + x^2) xs