import Data.List

sortDesc :: Ord a => [a] -> [a]
sortDesc xs = (reverse . sort) xs

f = (+1) -- vs. let f x = x + 1 vs. let f x = (+1) x
g = (*2) -- vs. let g x = x * 2 vs. let g x = (*2) x
h = (^3) -- vs. let h x = x ^ 3 vs. let h x = (^3) x

fg = f . g      -- vs. let fg x  = (f . g) x
gh = g . h      -- vs. let gh x  = (g . h) x
fgh = f . g . h -- vs. let fgh x = (f . g . h) x

w3 = \x y z -> sqrt (x^2 + y^2 + z^2)


are2FunsEqAt :: Eq a => (t -> a) -> (t -> a) -> [t] -> Bool
are2FunsEqAt _ _ [] = True 
are2FunsEqAt f g (x:xs) = f x == g x && are2FunsEqAt f g xs

 -- are2FunsEqAt (+2) (\x -> x + 2) [1..1000] = True