module Main where

mass2fuel :: Int -> Int
mass2fuel mass =
  let mass2fuelBase = (+(-2)) . (`quot` 3)
      fuel = mass2fuelBase mass
   in if mass > 0 then fuel + mass2fuel fuel
                  else 0


solve :: String -> Int
solve fileContents = foldr (+) 0 $ map mass2fuel masses
  where masses = map read $ lines $ fileContents 

main :: IO ()
main = do
  fuelAmounts <- readFile "input"
  print $ solve fuelAmounts
