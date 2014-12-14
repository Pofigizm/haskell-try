
main = print $
  if "yellow" `elem` colors
  then "Yello is here!"
  else "There's no yellow..."
  where colors = ["red",
                  "black",
                  "yellow",
                  "green"]
