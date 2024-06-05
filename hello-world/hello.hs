main = do
  putStrLn "Hello, world!"
  putStrLn ("Odd numbers: " ++ show (filter odd [10 .. 20]))
  content <- readFile "numbers.txt"
  putStrLn content