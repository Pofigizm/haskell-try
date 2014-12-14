addNewHostToFront :: String -> [String] -> [String]
addNewHostToFront newHost listOfHosts = newHost : listOfHosts

main =
  print $ addNewHostToFront "124.67.54.90" listOfHosts
  where
    listOfHosts = ["45.67.78.89", "123.45.65.54", "127.0.0.1"]