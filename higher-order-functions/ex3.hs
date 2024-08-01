prodEvens :: [Int] -> Int
prodEvens a = foldl (*) 1 (filter (\x -> mod x 2 == 0) a)

