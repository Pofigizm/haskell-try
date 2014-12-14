
main =
  print [prefix ++ name | name <- names, prefix <- namePrefix]
  where
    names = ["James", "Victor", "Denis", "Michael"]
    namePrefix = ["Mr. ", "Dear "]

-- ["Mr. James","Dear James","Mr. Victor","Dear Victor",
--  "Mr. Denis","Dear Denis","Mr. Michael","Dear Michael"]
