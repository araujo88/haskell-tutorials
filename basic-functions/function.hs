square :: Int -> Int
square n = n * n

doubleSquare :: Int -> Int
doubleSquare n = square (square n)

concatenateStrings :: String -> String -> String
concatenateStrings str1 str2 = str1 ++ str2

sumTwoNumbers :: Int -> Int -> Int
sumTwoNumbers a b = a + b

multiply :: Int -> Int -> Int
multiply x y = x * y

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

absVal :: Int -> Int
absVal n
  | n >= 0 = n
  | otherwise = -n

main :: IO ()
main = do
  print (square (square 2))
  print (doubleSquare 2)
  print (sumTwoNumbers 1 2)
  print (concatenateStrings "Hello, " "world!")
  let double = multiply 2
  print (double 10)
  print (map factorial [0, 1, 2, 3, 4, 5])
  print (nand False False)
  print (nand True True)
  print (absVal 1)
  print (absVal (-1))
