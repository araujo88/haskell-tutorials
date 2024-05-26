main = do
  putStrLn "Hello, world!"
  putStrLn ("Odd numbers: " ++ show (filter odd [10 .. 20]))