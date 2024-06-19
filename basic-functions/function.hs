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
factorial n
  | n < 0 = error "Factorial is not defined for negative numbers"
  | otherwise = n * factorial (n - 1)

nand :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

absVal :: Int -> Int
absVal n
  | n >= 0 = n
  | otherwise = -n

listLength :: [a] -> Int
listLength [] = 0
listLength list = 1 + listLength (tail list)

power :: Integer -> Integer -> Integer
power x 0 = 1
power x n
  | even n = y * y
  | otherwise = y * y * x
  where
    y = power x (div n 2)

-- 2^6 = 2^3 * 2^3 (even)
-- 2^7 = 2^3 * 2^3 * 2 (odd)

isPrime :: Int -> Bool
isPrime 0 = False
isPrime 1 = False
isPrime x = not (hasDivisor (x - 1))
  where
    hasDivisor :: Int -> Bool
    hasDivisor 1 = False
    hasDivisor n = mod x n == 0 || hasDivisor (n - 1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- fibonacci 2 = fibonacci (2-1) + fibonacci (2-2)
-- fibonacci 2 = fibonacci (1) + fibonacci (0) = 0 + 1 = 1

-- fibonacci 3 = fibonacci (3-1) + fibonacci (3-2)
-- fibonacci 3 = fibonacci 2 + fibonacci 1 = 1 + 1 = 2

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
  print (listLength [31, 234, 21, 23, 1])
  print (power 2 6)
  print (power 2 7)
  print (map isPrime [1 .. 10])
  print (map fibonacci [1 .. 10])
  print (factorial (-1)) -- will throw an error
