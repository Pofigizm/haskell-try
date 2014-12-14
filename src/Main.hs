data IPAddress = IP String | Host String

instance Show IPAddress where
  show (IP address) =
    address

  show (Host address) =
    if address == "127.0.0.1" then "localhost" else address


main = putStrLn $ 
  (show $ IP "127.0.0.1")
  ++ " " ++ 
  (show $ Host "127.0.0.1")
