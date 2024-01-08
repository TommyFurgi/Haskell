a = do 
    s <- getLine
    n <- return 3
    putStrLn $ show n ++ s

-- b = getline >>= \s -> getline >>= \n ->  3 >>  putStrln $ show n ++ s
-- b2 = getLine >>= \s ->   putStrLn $ show n ++ s
b4 = getLine >>= \s -> let n = 3 in putStrLn $ show n ++ s

b5 = getLine >>= \s -> return 3 >>= \n -> putStrLn $ show n ++ s



c = getLine >>= \s -> return 3 >>= \n -> putStrLn $ s ++ show n
c1 = do
    s <- getLine
    n <- return 3
    putStrLn $ s ++ show n 


data Tree a = Node a (Tree a) (Tree a)
            | Leaf

-- paths :: Tree a -> [ [a] ]
-- paths Leaf = []
-- paths (Node a lt rt) = concat $ ([(a:)] *> ) <$> (paths <$ [lt,rt])

-- pathSum :: Num a => Tree a -> [a]
-- pathSum Leaf = 0
-- pathSum (Node a lt rt) = concat $ ([(a +)] <*>) <$> (fmap pathSum [lt, rt])



class Functor f => Applicative (f :: * -> *) where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
    -- fmap :: (a -> b) -> f a -> f b

-- fmap :: Functor f => (a -> b) -> fa -> fb
-- (<*>) :: Applicative f => f (a -> b) -> f a -> f b
-- (<*) :: Applicative f => f a -> f b -> f a
-- (*>) :: Applicative f => f a -> f b -> f b

-- (<$>) :: Functor f => (a -> b) -> f a -> f b
-- (<$) :: Functor f => a -> f b -> f a

-- pure :: Applicative f => a -> f a