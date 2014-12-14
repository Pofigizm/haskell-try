import Data.Char

main = print [toUpper c | c <- "http", c == 't']
-- "TT"