import Data.String.Utils

checkGooglerBy :: String -> String
checkGooglerBy email =
  if email `endsWith` "gmail.com"
  then nameFrom email ++ " is a Googler!"
  else email
  where 
    endsWith str suffix = endswith suffix str
    nameFrom fullEmail = takeWhile (/= '@') fullEmail

main = print [checkGooglerBy email | email <- ["adam@gmail.com",
                                               "bob@yahoo.com",
                                               "richard@gmail.com",
                                               "elena@yandex.ru",
                                               "denis@gmail.com"]]
