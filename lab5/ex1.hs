main :: IO ()
main = putStr "Hello" >>
       putStrLn " World"


main2 :: IO ()
main2 = putStrLn "Your name?" >>
        getLine >>=
        \n -> putStrLn ("Hello, " ++ n)


main3 = do
        putStrLn "Your name?"
        n <- getLine
        putStrLn ("Hello, " ++ n)


main4 = do
    a <- return "a"
    b <- return "b"
    return () -- compare with return in C!
    return 1 -- !
    putStrLn $ a ++ " " ++ b -- !
