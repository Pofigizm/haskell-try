data User = User { firstName
                 , lastName
                 , email :: String
                 , account
                 , uid :: Integer
                 }

changeEmail :: User -> String -> User
changeEmail user newEmail = user { email = newEmail }

main =
  let userWithNewEmail = changeEmail user "shev.denis@gmail.com"
  in print $ email userWithNewEmail
  where user = User { firstName = "Denis"
                    , lastName = "Shevchenko"
                    , email = "me@dshevchenko.biz"
                    , account = 24
                    , uid = 15
                    }
