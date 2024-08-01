prod :: [Int] -> Int
prod a = foldl (*) 1 a

-- foldl example:
-- foldl (/) 64 [4,2,4]
-- divides 64 by 4, then by 2 and then by 4 again