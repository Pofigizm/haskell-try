data User = User { firstName :: String
                 , lastName :: String
                 , email :: String
                 }

changeEmail :: User -> String -> User
changeEmail user newEmail = user { email = newEmail }

main =
  let userWithNewEmail = changeEmail user "shev.denis@gmail.com"
  in print $ email userWithNewEmail
  where user = User { firstName = "Denis"
                    , lastName = "Shevchenko"
                    , email = "me@dshevchenko.biz"
                    }
