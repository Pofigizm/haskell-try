
chessMove :: (String, String) -> String
chessMove pair = fst pair ++ "-" ++ snd pair

main = print $ chessMove ("e2", "e4")