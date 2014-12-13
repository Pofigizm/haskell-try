-- import Data.Text
-- import Helpers

main = putStrLn (indicate "127.0.0.2")

indicate :: String -> String
indicate "127.0.0.1" = "localhost"
indicate address = address
