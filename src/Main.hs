-- import Data.Text
-- import Helpers

main = print (((mySum 10.05) 2.1) 45.7)

mySum :: Double -> (Double -> (Double -> Double))
mySum a b c = a + b + c
