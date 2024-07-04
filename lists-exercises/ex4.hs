average :: [Int] -> Float
average a = sumElem / len
  where
    sumElem = fromIntegral (sum a) :: Float
    len = fromIntegral (length a) :: Float

main = do
  print (average [1, 2, 3])