-- write a function myLast :: [a] -> a that, given a list of elements of type a, returns the last element of the list
myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

myLast2 :: [a] -> a
myLast2 [] = error "empty list"
myLast2 [x] = x
myLast2 a = myLast (tail a)

myLast3 :: [a] -> a
myLast3 = head . reverse

main :: IO ()
main = do
  print (myLast [1, 2, 3])
  print (myLast ['a'])
  print (myLast2 [1, 2, 3])
  print (myLast2 ['a'])
  print (myLast3 [1, 2, 3])
  print (myLast3 ['a'])
