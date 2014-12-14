type Login = String
type Password = String
type AvatarURL = String
type UserId = Integer

userInfo :: Login -> Password -> AvatarURL -> UserId -> String
userInfo login password avatarURL userId =
  "Full info about user @" ++ (show userId) ++ ":" ++
  "\n login: " ++ login ++
  "\n password: " ++ password ++
  "\n avatar URL: " ++ avatarURL

type EmptyInfo = Login -> Password -> AvatarURL -> UserId -> String
type WithLogin =          Password -> AvatarURL -> UserId -> String
type AndWithPassword =                AvatarURL -> UserId -> String
type AndWithAvatarURL =                            UserId -> String

storeLoginIn :: EmptyInfo -> UserId -> WithLogin
storeLoginIn emptyInfo userId =
  emptyInfo "denis"
  {- В реальности логин будет получен
  в соответствии с переданным userId -}

storePasswordIn :: WithLogin -> UserId -> AndWithPassword
storePasswordIn infoWithLogin userId = infoWithLogin "123456789abc"
  {- В реальности пароль будет получен
  в соответствии с переданным userId -}

storeAvatarURLIn :: AndWithPassword -> UserId -> AndWithAvatarURL
storeAvatarURLIn infoWithPassword userId =
  infoWithPassword "http://di-s.ru/denis_avatar.png"
  {- В реальности URL будет получен
  в соответствии с переданным userId -}

main =
  let 
    userId = 1234
    infoWithLogin = storeLoginIn userInfo userId
    infoWithPassword = storePasswordIn infoWithLogin userId
    infoWithAvatarURL = storeAvatarURLIn infoWithPassword userId
    fullInfoAboutUser = infoWithAvatarURL userId
  in
    putStrLn fullInfoAboutUser
