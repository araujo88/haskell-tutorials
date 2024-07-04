factorial :: Int -> Int
factorial n = product [1 .. n]

main = do
  print (head [1 .. 6]) -- head returns the first element from the list
  print (last [1 .. 6]) -- last returns the last element from list
  print (tail [1 .. 4]) -- tail returns the list without its first element
  print (init [1 .. 4]) -- init returns the list without the last element
  print (reverse [1 .. 4])
  print (length [])
  print (length [1 .. 5])
  print (length "Leonardo")
  print (null []) -- null checks if list is empty
  print (null [1 .. 8])
  print (elem 6 [1 .. 10]) -- elem checks if an element is on a list
  print ([1 .. 10] !! 3) -- returns the ith element from a list (starting from zero)
  print ([1 .. 5] ++ [1 .. 3]) -- concatenation of two lists
  print (maximum [1 .. 10])
  print (minimum [1 .. 10])
  print (sum [1 .. 5])
  print (factorial 5)
  print (take 3 [1 .. 7]) -- take the first 3 elements from the list
  print (drop 3 [1 .. 7]) -- drop the first 3 elements from the list
  print (zip [1, 2, 3] ['a', 'b', 'c']) -- combines two lists
  print (take 4 (repeat 3)) -- repeat creates an infinite list
  print (replicate 4 3) -- creates same output as above
  print (concat [[1, 2, 3], [], [3], [1, 2]]) -- concatenates all lists of a list of lists
