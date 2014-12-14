-- import Data.Text
-- import Helpers

main = 
  let 
    partsum = (mySum 10.05) 2.1
  in 
    print (partsum 55)

mySum :: Double -> (Double -> (Double -> Double))
mySum a b c = a + b + c
