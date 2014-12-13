-- import Data.Text
-- import Helpers

main = putStrLn (indicate "")

indicate :: String -> String
indicate address
  | address == "127.0.0.1" = "localhost"
  | null address = "empty Ip-address"
  | otherwise = address
