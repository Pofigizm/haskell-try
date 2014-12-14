main :: IO ()
main = do
  fileContent <- readFile "c://dev/test.c"
  putStrLn fileContent