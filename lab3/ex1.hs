-- 1. collection pipeline - uzumepanianie 
-- 2. list comprehention + suma na zewnatrz (map filter, fold)
-- 3. lamda i $



f1 = \x -> x-2
f2 = \x y -> sqrt(x^2 + y^2)
f = \x -> x^2


f7 = \x -> x `mod` 2 == 0
-- f7 = \x -> if x `mod` 2 == 0 then True else False