module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn $ show $ makeAllNegative [1, 2, 2 ,3 ,4]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

howManyElementsDoesItTakeForTheSumOfTheRootsOfAllNaturalNumbersToExceedANumber :: (Floating a, Ord a, Enum a) => a -> Int
howManyElementsDoesItTakeForTheSumOfTheRootsOfAllNaturalNumbersToExceedANumber x = (+) 1 $ length $ takeWhile (<x) $ scanl1 (+) $ map sqrt [1..]

makeAllNegative :: (Num a) => [a] -> [a]
makeAllNegative = map $ negate . abs

boomBangs :: (Integral a) => [a] -> [String]
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] 
