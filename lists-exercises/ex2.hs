-- write a function that returns the penultime object from a list
myButLast :: [a] -> a
myButLast = last . init

myButLast2 :: [a] -> a
myButLast2 [x, _] = x
myButLast2 (x : xs) = myButLast xs

main = do
  print (myButLast [1, 2, 3, 4, 5, 6])
  print (myButLast ['a', 'b', 'c'])
  print (myButLast ['x', 'y'])
  print (myButLast2 [1, 2, 3, 4, 5, 6])
  print (myButLast2 ['a', 'b', 'c'])
  print (myButLast2 ['x', 'y'])
