listOfNames :: String -> [String]
listOfNames prefix =
  [prefix ++ "John", prefix ++ "Anna", prefix ++ "Andrew"]
  
main = print $ listOfNames "Dear "
