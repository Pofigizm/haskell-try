
main =
  print [if car == "Bentley" then "Wow!" else "Good!" | car <- cars]
  where cars = ["Mercedes",
                "BMW",
                "Bentley",
                "Audi",
                "Bentley"]

--  ["Good!","Good!","Wow!","Good!","Wow!"]