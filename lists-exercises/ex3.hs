-- define a function duplicate :: [a] -> [a] that duplicates the elements of a list
duplicate :: [a] -> [a]
duplicate [] = []
duplicate [x, y] = [x, x, y, y]
duplicate a = [head a, head a] ++ duplicate (tail a)

main = do
  print (duplicate [1, 2, 3])
  print (duplicate ['x', 'y', 'z'])