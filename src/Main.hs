obtainUserText :: String -> IO String
obtainUserText prompt = do
  putStrLn prompt -- Выведи приглашение ввести строку.
  getLine -- Получи от пользователя некую строку.

main :: IO ()
main = do
  firstText <- obtainUserText "Enter your text, please: "
  secondText <- obtainUserText "One more, please: "
  putStrLn $ "You said '" ++ firstText ++ "' and '" ++ secondText ++ "'"