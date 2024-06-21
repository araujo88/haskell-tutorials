fizzbuzz :: Int -> String
fizzbuzz n
  | mod n 5 == 0 && mod n 3 == 0 = "FizzBuzz"
  | mod n 3 == 0 = "Fizz"
  | mod n 5 == 0 = "Buzz"
  | otherwise = show n

main = do
  print (map fizzbuzz [1 .. 15])
