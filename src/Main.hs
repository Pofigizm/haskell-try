{-
main = print $
  if "yellow" `elem` colors
  then "Yello is here!"
  else "There's no yellow..."
  where colors = ["red",
                  "black",
                  "yellow",
                  "green"]
-}

-- elem :: Eq a => a -> [a] -> Bool
-- Eq a => a
--    (==) :: a -> a -> Bool
--    (/=) :: a -> a -> Bool

-- nothing :: a -> a
-- nothing val = val
-- main = print $ nothing $ IP "127.0.0.1"

-- nothing :: (Show a, Show b, Eq b) => a -> b -> String
-- nothing value1 value2 = show value1 ++ show value2
