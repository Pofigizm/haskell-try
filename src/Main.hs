type UserId = Integer
type Prefix = String

obtainLogin :: UserId -> (Prefix -> String)
obtainLogin userId =
  loginStorage "denis" -- Подразумевается, что логин как-то получен.
  where
    loginStorage login prefix = prefix ++ ": " ++ login

main =
  let
    userId = 1234
  in
    putStrLn ((obtainLogin userId) "My login")

