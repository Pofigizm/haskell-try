{-
main :: IO ()
main = do
  text <- getLine
  putStrLn $ "You said '" ++ text ++ "'"
-}

main :: IO ()
main = getLine >>= \text -> putStrLn $ "Your text is " ++ text
