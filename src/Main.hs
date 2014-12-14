data IPAddress = IP String

instance Show IPAddress where
  show (IP address) =
    if address == "127.0.0.1" then "localhost" else address

main = putStrLn $ show $ IP "127.0.0.1"
