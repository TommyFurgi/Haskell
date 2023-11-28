
isPrime n
  | n <= 1  = False
  | otherwise = [i | i <- [2..n-1], n `mod` i == 0] == []

primeNumbers = [n | n <- [2..1000], isPrime n]
