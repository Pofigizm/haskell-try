import Control.Exception

main :: IO ()
main = do
  result <- try $ readFile path :: IO (Either IOException String)
  case result of
    Left exception -> putStrLn $ "Fault: " ++ show exception
    Right content -> putStrLn content
  where path = "c://dev/test.c"
