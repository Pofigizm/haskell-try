data User = User { firstName :: String
                 , lastName :: String
                 , email :: String
                 }

main =
  print $ firstName user ++ " " ++
  lastName user ++ ", " ++
  email user
  where user = User { firstName = "Denis"
                    , lastName = "Shevchenko"
                    , email = "me@dshevchenko.biz"
                    }
