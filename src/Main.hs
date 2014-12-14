obtainTwoTextsFromUser :: IO String
obtainTwoTextsFromUser = do
  putStrLn "Enter your text, please: "
  firstText <- getLine
  putStrLn "One more, please: "
  secondText <- getLine
  return $ "'" ++ firstText ++ "' and '" ++ secondText ++ "'"
  putStrLn "Function return not stop run function :) "
  getLine

main :: IO ()
main = do
  twoTexts <- obtainTwoTextsFromUser
  putStrLn $ "You said " ++ twoTexts
