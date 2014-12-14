removeAllEmptyNamesFrom :: [String] -> [String]
removeAllEmptyNamesFrom listOfNames =
  filter notEmptyName listOfNames
  where notEmptyName = not . null

addSmth :: [String] -> [String]
addSmth listOfNames =
  map addDear listOfNames
  where addDear el = "Dear " ++ el

main =
  print $ addSmth $ removeAllEmptyNamesFrom listOfNames
  where listOfNames = ["John", "", "Ann"]
