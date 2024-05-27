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

main :: IO ()
main = do
  print (square (square 2))
  print (doubleSquare 2)
  print (sumTwoNumbers 1 2)
  print (concatenateStrings "Hello, " "world!")
  let double = multiply 2
  print (double 10)