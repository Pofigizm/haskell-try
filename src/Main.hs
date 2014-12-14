import Data.String.Utils

checkGooglerBy :: String -> String
checkGooglerBy email =
  if endswith "gmail.com" email
  then nameFrom email ++ " is a Googler!"
  else email
  where nameFrom  = takeWhile (/= '@') 

main = print [checkGooglerBy email | email <- ["adam@gmail.com",
                                               "bob@yahoo.com",
                                               "richard@gmail.com",
                                               "elena@yandex.ru",
                                               "denis@gmail.com"]]
