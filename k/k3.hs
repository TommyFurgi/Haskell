{-# LANGUAGE TemplateHaskell #-}
import Data.Char
import GHC.Exts.Heap (GenClosure(what_next))
a = sum [(x+1)^2 | x<-[1..10], 2*x<13, even x] -- 83
aa = [(x+1)^2 | x<-[1..10], 2*x<13, even x] -- [9,25,49]

b = foldr (+) 0 . map (\x ->(x+1)^2) . filter even . filter((<13) . (2*)) $ [1..10] -- 83
b2 = foldr (+) 0 . map ((^2).(+1)) . filter even . filter((<13) . (2*)) $ [1..10] -- 83


fun = sum . map (^2) . map length . filter (all isUpper) . filter ((== 'K') . head)


f g x = [g x, g (x+1), g (x+2)] 
f2 = \g -> map g . ( \x -> map ($ x) [id,(+1),(+2)]) -- DZIALA




-- fun2 :: String -> Int
fun2 = length . 
   filter (> 2) . 
   map length . 
   map (filter (`elem` volwes))
   where volwes = "aeyiou"
--    ["kot", "pies", "samogloska", "Haskell", "funkcja"] -- 1


p = sum [x^2 | x <- [1,3..15], x `mod` 3 == 1] -- 219

pp = foldr (+) 0 . -- 219
     map (^2) .
     filter ((== 1) . (`mod` 3)) .
     map (+1) . map (*2) $ [0..7]
      