
askForText :: IO String
askForText = 
  putStrLn "Enter your text, please: "
  >> getLine >>= \firstText
  -> return $ "You text is '" ++ firstText ++ "'"

main :: IO ()
main =
  askForText >>= \txt -> putStrLn txt