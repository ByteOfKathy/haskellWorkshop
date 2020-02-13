-- https://learnyouahaskell.com/chapters
-- an intro to functional programming thru lambda calculus

main = do
  putStrLn "Hello"
  putStrLn "World"

data TrafficLight
    = Red Bool
    | Yellow Bool
    | Green
    deriving (Show)

isRed :: TrafficLight -> Bool
isRed (Red _) = True
isRed _ = False

isBlinking :: TrafficLight -> Bool
isBlinking Green = False
isBlinking (Red blinking) = blinking
isBlinking (Yellow blinking) = blinking

-- simple functions

myFunction =
  let x = 5
  in let x = 3 in x

add :: Int -> Int -> Int
add x y = x + y
add3 x = x + 3

applyTwice :: (Int -> Int) -> Int -> Int
applyTwice function value = function (function value)

add3ToList :: [Int] -> [Int]
add3ToList = map (+3)

wow :: [Int] -> [String]
wow list = map add3ToString . filter even $ list
    where add3ToString = show . (+3)