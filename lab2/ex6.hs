import Data.Binary.Get (Decoder(Fail))
import Foreign (Storable(pokeByteOff))
fib :: (Num a, Eq a) => a -> a
fib n =
 if n == 0 || n == 1 then n
 else fib (n - 2) + fib (n - 1)



sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

prod' :: Num a => [a] -> a -- prod' [1,2,3] = 6
prod' []     = 1
prod' (x:xs) = x * prod' xs


length' :: [a] -> Int -- length' [1,1,1,1] = 4
length' []     = 0
length' (_:xs) = 1 + length' xs


or' :: [Bool] -> Bool
or' [] = False             
or' (x:xs) = x || or' xs 


elem' :: Eq a => a -> [a] -> Bool -- elem' 3 [1,2,3] = True
elem' n [] = False
elem' n (x:xs) = (x == n) || elem' n xs


doubleAll :: Num t => [t] -> [t] -- doubleAll [1,2] = [2,4]
doubleAll [] = []
doubleAll (x:xs) = [x^2] ++ doubleAll xs 

selectEven :: Integral t => [t] -> [t] -- selectEven [1,2,3] = [2]
selectEven [] = []
selectEven (x:xs) = if x `mod` 2 == 0
                    then [x] ++ selectEven xs
                    else selectEven xs


-- zadanie 7 
sum'2 :: Num a => [a] -> a
sum'2 xs = loop 0 xs
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

sum'3 :: Num a => [a] -> a
sum'3 = loop 0
 where loop acc []     = acc
       loop acc (x:xs) = loop (x + acc) xs

prod'2 :: Num a => [a] -> a
prod'2 xs = loop 1 xs
    where loop acc []     = acc
          loop acc (x:xs) = loop (acc*x) xs 

length'2 :: [a] -> Int
length'2 xs = loop 0 xs
    where loop acc []     = acc
          loop acc (_:xs) = loop (acc+1) xs 