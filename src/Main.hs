import Control.Exception

tryToOpenFile :: FilePath -> IO String
tryToOpenFile path =
  handle possibleErrors (readFile path)
  where
    possibleErrors :: IOException -> IO String
    possibleErrors error = return "Aaaaa!!! Please check file."

main :: IO ()
main = do
  fileContent <- tryToOpenFile "c://dev/test.c"
  putStrLn fileContent
