apli2 :: (a -> a) -> a -> a
apli2 f x = f (f x)
-- example: appli2 sqrt 16 => 2

-- anonymous functions
main = do
  print (map (\x -> x^2) [1..10])
  print (map (* 2) [1..10])
