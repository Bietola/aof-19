module Main where

solve :: String -> Int
solve fileContents = foldr (+) 0 $ map mass2fuel masses
  where masses = map read $ lines $ fileContents 
        mass2fuel mass = (mass `quot` 3) - 2

main :: IO ()
main = do
  fuelAmounts <- readFile "input"
  print $ solve fuelAmounts
