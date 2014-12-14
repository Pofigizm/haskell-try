import Data.Char
import Data.String.Utils

addPrefix :: String -> String
addPrefix url =
  if (startswith prefix url) then url else prefix ++ url
  where prefix = "http://"

encodeAllSpaces = replace " " "%20" -- Заменяем все пробелы на %20.

makeItLowerCase = map toLower -- Переводим символы строки в нижний регистр.

main =
  putStrLn (addPrefix (encodeAllSpaces (makeItLowerCase url)))
  where url = "www.SITE.com/test me/Start page"
