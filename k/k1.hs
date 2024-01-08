collaztz :: Int -> Int
collaztz n =
    let divides d n = n `mod` d == 0
        isEven n = divides 2 n
    in if isEven n then n `div` 2
                    else 3 * n + 1

collaztz2 :: Int -> Int
collaztz2 n | isEven n = n `div` 2
           | otherwise = 3 * n + 1
           where divides d n = n `mod` 2 == 0
                 isEven n = divides 2 n 

-- f :: (Ord a1, Num a1, Eq a2) => (a1, a2, a1) -> Bool
f (x, y, z) = if x + 3 < z
                then True
                else y /= y 

f2:: Num a => a -> a
f2 a = 2 * a

-- f4 x = if x > 3 then 2 * x else False

