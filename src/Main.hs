-- import Data.Text
-- import Helpers

main = print (prepareLength 2.5)

prepareLength :: Double -> Double
prepareLength line =
  let
    cons = 4
    corr = 0.5
    s = 5
  in
    line * cons + corr -
    (
      let
        s = 1
      in
        s / 2
    ) - s
