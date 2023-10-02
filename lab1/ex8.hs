not' :: Bool -> Bool
not' b = case b of
          True  -> False
          False -> True

absInt n =
 case (n >= 0) of
   True -> n
   _    -> -n


isItTheAnswer n = 
    case (n == "Love") of
    True -> True
    _    -> False

and' (x,y) =
    case (x,y) of
    (True,True) -> True
    (_,_)       -> False

-- trywialne
-- or' :: (Bool, Bool) -> Bool
-- and' :: (Bool, Bool) -> Bool
-- nand' :: (Bool, Bool) -> Bool
-- xor' :: (Bool, Bool) -> Bool