insertIn :: a -> [a] -> Int -> [a]
insertIn el list n = take (n - 1) list ++ [el] ++ drop (n - 1) list

-- insertIn 8 [1, 5, 2, 7] 3 = [1, 5, 8, 2, 7]
-- insertIn 'X' "abcd" 2 = "aXbcd"
